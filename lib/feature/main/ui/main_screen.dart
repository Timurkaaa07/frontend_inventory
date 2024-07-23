import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../app/ui/components/app_dialog.dart';
import '../../auth/domain/entities/user_entity/user_entity.dart';
import '../../auth/ui/user_screen.dart';
import '../../goods/domain/state/cubit/goods_cubit.dart';
import '../../goods/ui/goods_list.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.userEntity});
  final UserEntity userEntity;

  @override
  _MainScreenState createState() => _MainScreenState( );
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController _inventoryController = TextEditingController();
  int _selectedIndex = 0;

  bool _isScanningBarcode = false;

  @override
  void dispose() {
    _inventoryController.dispose();
    super.dispose();
  }

  Future<void> _scanBarcode() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666', // Цвет линии сканирования
        'Отмена', // Текст кнопки отмены
        true, // Показывать вспышку
        ScanMode.BARCODE, // Режим сканирования
      );
      if (barcodeScanRes != '-1') {
        await Future.delayed(const Duration(milliseconds: 500));
        setState(() {
          _isScanningBarcode = true;
        });
        context.read<GoodsCubit>().scanBarcode(barcodeScanRes);
      }
    } catch (e) {
      barcodeScanRes = 'Failed to get platform version.';
    }
  }

  void _showBarcodeDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Сканировать штрихкод'),
          content: TextField(
            controller: _inventoryController,
            decoration: const InputDecoration(
              labelText: 'Введите инвентарный номер',
              border: OutlineInputBorder(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Отмена'),
            ),
            ElevatedButton(
              onPressed: () {
                final inventoryNumber = _inventoryController.text;
                if (inventoryNumber.isNotEmpty) {
                  context.read<GoodsCubit>().scanBarcode(inventoryNumber);
                  Navigator.of(context).pop();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Пожалуйста, введите инвентарный номер')),
                  );
                }
              },
              child: const Text('Сканировать'),
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.of(context).pop();
                await _scanBarcode();
              },
              child: const Text('Сканировать штрихкод'),
            ),
          ],
        );
      },
    );
  }

  void _showScanResultDialog(Map<String, dynamic> data) {
    if (data["data"] != null && data["data"].isNotEmpty) {
      final itemData = data["data"][0];
      final itemId = itemData[0].toString();
      final itemInventNumber = itemData[1].toString();
      final itemName = itemData[2];
      final conditionGood = itemData[3];
      final roomNumber = itemData[4];
      final employeeName = itemData[5];

      final TextEditingController _inventoryListController = TextEditingController();
      double _rating = 2.0;

      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Результат сканирования'),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'id ОС: $itemId\n'
                        'Инвентарный номер ОС: $itemInventNumber\n'
                        'Наименование ОС: $itemName\n'
                        'Статус: $conditionGood\n'
                        'Номер кабинета: $roomNumber\n'
                        'ФИО сотрудника: $employeeName\n',
                  ),
                  const SizedBox(height: 20),
                  RatingBar.builder(
                    initialRating: _rating,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: false,
                    itemCount: 4,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      _rating = rating;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _inventoryListController,
                    decoration: const InputDecoration(
                      labelText: 'Номер инвентарной ведомости',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Отмена'),
              ),
              ElevatedButton(
                onPressed: () {
                  final inventoryListId = int.tryParse(_inventoryListController.text);
                  final goodId = int.tryParse(itemId);

                  debugPrint('Parsed inventoryListId: $inventoryListId');
                  debugPrint('Parsed goodId: $goodId');

                  if (inventoryListId != null && goodId != null) {
                    String statusIR;
                    switch (_rating.round()) {
                      case 1:
                        statusIR = "неудовлетворительно";
                        break;
                      case 2:
                        statusIR = "удовлетворительно";
                        break;
                      case 3:
                        statusIR = "хорошо";
                        break;
                      case 4:
                        statusIR = "отлично";
                        break;
                      default:
                        statusIR = "неудовлетворительно";
                    }

                    final requestData = {
                      "statusIR": statusIR,
                      "inventoryListId": inventoryListId,
                      "goodsList": goodId,
                    };
                    debugPrint('Sending createInventoryRecord request with data: $requestData');
                    context.read<GoodsCubit>().createInventoryRecord(requestData);
                    Navigator.of(context).pop();
                  } else {
                    if (inventoryListId == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Пожалуйста, введите корректный ID списка инвентаря')),
                      );
                    }
                    if (goodId == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Некорректный ID товара')),
                      );
                    }
                  }
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      _showErrorDialog("Некорректные данные: ${data["data"]}");
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Ошибка'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _refreshGoodsList() async {
    context.read<GoodsCubit>().fetchIL();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        context.read<GoodsCubit>().fetchIL();
        break;
      case 1:
        _showBarcodeDialog();
        break;
      case 2:
        _scanBarcode();
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const UserScreen(),
          ),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Главное меню"),
      ),
      body: BlocListener<GoodsCubit, GoodsState>(
        listener: (context, state) {
          if (state.asyncSnapshot != null) {
            if (state.asyncSnapshot!.connectionState == ConnectionState.done &&
                state.asyncSnapshot!.hasData) {
              final data = state.asyncSnapshot!.data as Map<String, dynamic>;
              debugPrint('Data received: $data');
              if (data["message"] == "Товар по данному инвентарному номеру не найден") {
                _showErrorDialog("Товар по данному инвентарному номеру не найден");
              } else {
                _showScanResultDialog(data);
              }
              setState(() {
                _isScanningBarcode = false;
              });
            } else if (state.asyncSnapshot!.hasError) {
              final error = state.asyncSnapshot!.error.toString();
              debugPrint('Error received: $error');
              if (error.contains("Товар по данному инвентарному номеру не найден")) {
                _showErrorDialog("Товар по данному инвентарному номеру не найден");
              }
              setState(() {
                _isScanningBarcode = false;
              });
            }
          }
        },
        child: RefreshIndicator(
          onRefresh: _refreshGoodsList,
          child: const GoodsList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner, color: Colors.black),
            label: 'Сканировать',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt, color: Colors.black),
            label: 'Камера',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box, color: Colors.black),
            label: 'Профиль',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
