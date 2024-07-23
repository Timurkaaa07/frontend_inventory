import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import '../../../../auth/domain/auth_state/auth_cubit.dart';
import '../../entity/goods/goods_entity.dart';
import '../../post_repo.dart';
part 'goods_state.dart';
part 'goods_cubit.freezed.dart';
part 'goods_cubit.g.dart';

class GoodsCubit extends HydratedCubit<GoodsState> {
  GoodsCubit(this.repo, this.authCubit)
      : super(const GoodsState(asyncSnapshot: AsyncSnapshot.nothing())){
    authSub = authCubit.stream.listen((event) {
      event.mapOrNull(
        // authorized: (value) => fetchGoods(),
        authorized: (value) => fetchIL(),
        notAuthorized: (value) => logOut(),
      );
    });
  }

  final PostRepo repo;
  final AuthCubit authCubit;
  late final StreamSubscription authSub;

  Future<void> fetchIL() async {
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    try {
      final data = await repo.fetchIL();
      emit(state.copyWith(
        inventoryList: data.toList(),
        asyncSnapshot: const AsyncSnapshot.withData(ConnectionState.done, true),
      ));
    } catch (error) {
      addError(error);
    }
  }


  Future<void> fetchGoods() async {
    emit (state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    await repo.fetchGoods().then((value) {
      final Iterable iterable = value;
      emit(state.copyWith(
          goodsList: iterable.map((e) => GoodsEntity.fromJson(e)).toList(),
          asyncSnapshot:
          const AsyncSnapshot.withData(ConnectionState.done, true)));
    }).catchError((error) {
      addError(error);
    });
  }


  Future<void> scanBarcode(String inventoryNumber) async {
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    try {

      final data = await repo.scanBarcode(inventoryNumber);
      if (data['data'].isEmpty) {
        emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.withError(ConnectionState.done, 'Inventory number not found')));
      } else {
        emit(state.copyWith(asyncSnapshot: AsyncSnapshot.withData(ConnectionState.done, data)));
      }
    } catch (error) {
      debugPrint('Scan error: $error');
      addError(error);
    }
  }




  Future<void> createGood(Map args) async {
    await repo.createGood(args).then((value) {
      fetchGoods();
    }).catchError((error) {
      addError(error);
    });
  }

  Future<void> createInventoryRecord(Map args) async {
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    try {
      debugPrint('Creating inventory record with args: $args');
      final message = await repo.createInventoryRecord(args);
      debugPrint('Create inventory record response: $message');
      emit(state.copyWith(asyncSnapshot: AsyncSnapshot.withData(ConnectionState.done, message)));
    }catch (error) {
      debugPrint('Create Inventory Record error: $error');
      addError(error);
    }
  }



  void logOut()
  {
    emit(state.copyWith(
      asyncSnapshot: const AsyncSnapshot.nothing(),goodsList: [],
    ));
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(state.copyWith(
        asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
    super.addError(error, stackTrace);
  }

  @override
  GoodsState? fromJson(Map<String, dynamic> json) {
    return GoodsState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(GoodsState state) {
    return state.toJson();
  }


  @override
  Future<void> close() {
    authSub.cancel();
    return super.close();
  }
}
