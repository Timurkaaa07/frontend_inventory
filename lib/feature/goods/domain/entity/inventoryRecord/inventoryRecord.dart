import 'package:client_it/feature/goods/domain/entity/inventoryList/inventoryList.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:client_it/feature/goods/domain/entity/employee/employee_entity.dart';

import '../goods/goods_entity.dart';

part 'inventoryRecord.freezed.dart';
part 'inventoryRecord.g.dart';
@freezed
class InventoryRecordEntity with _$InventoryRecordEntity {

  const factory InventoryRecordEntity({
    required int id,
    DateTime? inventRecord,
    String? statusIR,
    EmployeeEntity? employee,
    GoodsEntity? goodsList,
    InventoryListEntity? inventoryList
  }) = _InventoryRecordEntity;

  factory InventoryRecordEntity.fromJson(Map<String, dynamic> json) =>
      _$InventoryRecordEntityFromJson(json);
}