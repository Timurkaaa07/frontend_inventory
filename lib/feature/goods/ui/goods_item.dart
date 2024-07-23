import 'package:flutter/material.dart';

class GoodsItem extends StatelessWidget {
  final List<dynamic> inventoryList;
  const GoodsItem({super.key, required this.inventoryList});

  String formatName(String fullName) {
    final parts = fullName.split(' ');
    if (parts.length >= 3) {
      return '${parts[0]} ${parts[1][0]}.${parts[2][0]}.';
    }
    return fullName;
  }

  @override
  Widget build(BuildContext context) {
    final bool isScanned = inventoryList[7] == 'сканировано';
    final Color cardColor = isScanned ? Colors.green[100]! : Colors.white;

    return GestureDetector(
      // Uncomment and modify if needed
      // onTap: () {
      //   Navigator.of(context).push(MaterialPageRoute(
      //     builder: (context) => DetailGoodsScreen(id: goodsEntity.id.toString()),
      //   ));
      // },
      child: Card(
        color: cardColor,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Код приказа: ${inventoryList[0]}'),
                  SizedBox(width: 10),
                  Text('Помещение: ${inventoryList[2]}'),
                ],
              ),
              Text('Комиссия: ${formatName(inventoryList[1])}'),
              Text('Инвентарный номер: ${inventoryList[5]}'),
              Text('Ответственный: ${formatName(inventoryList[6])}'),
              Text('Статус: ${inventoryList[7] ?? 'не сканировано'}'),
            ],
          ),
        ),
      ),
    );
  }
}
