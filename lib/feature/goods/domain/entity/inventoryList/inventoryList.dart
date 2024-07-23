import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:client_it/feature/goods/domain/entity/employee/employee_entity.dart';

import '../room/room.dart';


part 'inventoryList.freezed.dart';
part 'inventoryList.g.dart';

@freezed
class InventoryListEntity with _$InventoryListEntity {

  const factory InventoryListEntity({
    required int id,
    required int codeOrderIL,
    String? datePeriod,
    DateTime? dateIL,
    RoomEntity? room,
    EmployeeEntity? employee
  }) = _InventoryListEntity;

  factory InventoryListEntity.fromJson(Map<String, dynamic> json) =>
      _$InventoryListEntityFromJson(json);
}