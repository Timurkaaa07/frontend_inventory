import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../app/ui/app_loader.dart';
import '../domain/state/cubit/goods_cubit.dart';
import 'goods_item.dart';

class GoodsList extends StatelessWidget {
  const GoodsList({Key? key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GoodsCubit, GoodsState>(
      listener: (context, state) {
        // Можно добавить логику обработки сообщений или действий при изменении состояния
      },
      builder: (context, state) {
        if (state.asyncSnapshot?.connectionState == ConnectionState.waiting) {
          return const AppLoader();
        } else if (state.asyncSnapshot?.hasError == true) {
          return Center(child: Text('Ведомость отсутствует'));
        } else if (state.inventoryList.isNotEmpty) {
          return ListView.builder(
            key: UniqueKey(), // Добавляем ключ для обновления списка
            shrinkWrap: true,
            itemCount: state.inventoryList.length,
            itemBuilder: (context, index) {
              final inventoryItem = state.inventoryList[index];
              return GoodsItem(inventoryList: inventoryItem);
            },
          );
        } else {
          return const SizedBox.shrink(); // Пустой виджет, если список пустой
        }
      },
    );
  }
}
