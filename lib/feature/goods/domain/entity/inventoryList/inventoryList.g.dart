// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventoryList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InventoryListEntityImpl _$$InventoryListEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$InventoryListEntityImpl(
      id: (json['id'] as num).toInt(),
      codeOrderIL: (json['codeOrderIL'] as num).toInt(),
      datePeriod: json['datePeriod'] as String?,
      dateIL: json['dateIL'] == null
          ? null
          : DateTime.parse(json['dateIL'] as String),
      room: json['room'] == null
          ? null
          : RoomEntity.fromJson(json['room'] as Map<String, dynamic>),
      employee: json['employee'] == null
          ? null
          : EmployeeEntity.fromJson(json['employee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InventoryListEntityImplToJson(
        _$InventoryListEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'codeOrderIL': instance.codeOrderIL,
      'datePeriod': instance.datePeriod,
      'dateIL': instance.dateIL?.toIso8601String(),
      'room': instance.room,
      'employee': instance.employee,
    };
