import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entity/goods/goods_entity.dart';
import '../../post_repo.dart';

part 'detail_goods_state.dart';
part 'detail_goods_cubit.freezed.dart';

class DetailGoodsCubit extends Cubit<DetailGoodsState> {
  DetailGoodsCubit(this.postRepo, this.id) : super(const DetailGoodsState());

  final PostRepo postRepo;
  final String id;


  Future<void> fetchGood() async {
    emit (state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    await Future.delayed(const Duration(seconds: 1));
    await postRepo.fetchGood(id).then((value) {
      print("Data fetched: $value"); // Add this line
      emit(state.copyWith(
          goodsEntity: value,
          asyncSnapshot: const AsyncSnapshot.withData(
              ConnectionState.done,
              "Успешное получение ОС")));
    }).catchError((error) {
      addError(error);
    });
  }

  Future<void> deleteGood() async {
    emit (state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    await Future.delayed(const Duration(seconds: 1));
    await postRepo.deleteGood(id).then((value) {
      emit(state.copyWith(
          asyncSnapshot:
          const AsyncSnapshot.withData(
              ConnectionState.done,
              "Успешное удаление поста")));
    }).catchError((error) {
      addError(error);
    });
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    print("Error: $error, StackTrace: $stackTrace");
    emit(state.copyWith(
        asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
    super.addError(error, stackTrace);
  }
}