import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../app/di/init_di.dart';
import '../../../app/domain/error_entity/ErrorEntity.dart';
import '../../../app/ui/app_loader.dart';
import '../../../app/ui/components/app_snackbar.dart';
import '../domain/entity/goods/goods_entity.dart';
import '../domain/post_repo.dart';
import '../domain/state/cubit/goods_cubit.dart';
import '../domain/state/detail_goods/detail_goods_cubit.dart';

class DetailGoodsScreen extends StatelessWidget {
  const DetailGoodsScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
        DetailGoodsCubit(locator.get<PostRepo>(), id)..fetchGood(),
      child: const _DetailGoodsView(),
    );
  }
}

class _DetailGoodsView extends StatelessWidget {
  const _DetailGoodsView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                context.read<DetailGoodsCubit>().deleteGood().then((_) {
                  context.read<GoodsCubit>().fetchGoods();
                  Navigator.of(context).pop();
                });
              },
              icon: const Icon(Icons.delete))
        ],
      ),
      body: BlocConsumer<DetailGoodsCubit, DetailGoodsState>(
        builder: (context, state) {
          if (state.asyncSnapshot.connectionState == ConnectionState.waiting) {
            return const AppLoader();
          }

          if (state.goodsEntity != null) {
            return _DetailGoodsItem(
              goodsEntity: state.goodsEntity!,
            );
          }

          return const Center(
            child: Text("Ошибка данных"),
          );
        },
        listener: (context, state) {
          print("Current state: $state"); // Add this line
          if (state.asyncSnapshot.hasData) {
            AppSnackBar.showSnackBarWithMessage(
                context, state.asyncSnapshot.data.toString());
          }
          if (state.asyncSnapshot.hasError) {
            print("Error: ${state.asyncSnapshot.error}");
            AppSnackBar.showSnackBarWithError(
                context, ErrorEntity.fromException(state.asyncSnapshot.error));
            Navigator.of(context).pop();
          }
        },
      ),
    );
  }
}

class _DetailGoodsItem extends StatelessWidget {
  const _DetailGoodsItem({required this.goodsEntity});

  final GoodsEntity goodsEntity;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text("Инвентарный номер ОС: ${goodsEntity.inventoryNumberGoods}"),
        Text("Наименование ОС: ${goodsEntity.nameGoods}"),
        Text("Группа ОС: ${goodsEntity.groupGoods}"),
        Text("Статус: ${goodsEntity.conditionGoods}"),
        Text("Первоначальная стоимость: ${goodsEntity.firstCost}"),
      ],
    );
  }
}
