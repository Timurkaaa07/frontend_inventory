// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventoryRecord.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InventoryRecordEntityImpl _$$InventoryRecordEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$InventoryRecordEntityImpl(
      id: (json['id'] as num).toInt(),
      inventRecord: json['inventRecord'] == null
          ? null
          : DateTime.parse(json['inventRecord'] as String),
      statusIR: json['statusIR'] as String?,
      employee: json['employee'] == null
          ? null
          : EmployeeEntity.fromJson(json['employee'] as Map<String, dynamic>),
      goodsList: json['goodsList'] == null
          ? null
          : GoodsEntity.fromJson(json['goodsList'] as Map<String, dynamic>),
      inventoryList: json['inventoryList'] == null
          ? null
          : InventoryListEntity.fromJson(
              json['inventoryList'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InventoryRecordEntityImplToJson(
        _$InventoryRecordEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inventRecord': instance.inventRecord?.toIso8601String(),
      'statusIR': instance.statusIR,
      'employee': instance.employee,
      'goodsList': instance.goodsList,
      'inventoryList': instance.inventoryList,
    };
