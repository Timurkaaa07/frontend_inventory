// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goods_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoodsEntityImpl _$$GoodsEntityImplFromJson(Map<String, dynamic> json) =>
    _$GoodsEntityImpl(
      id: (json['id'] as num).toInt(),
      inventoryNumberGoods: (json['inventoryNumberGoods'] as num).toInt(),
      nameGoods: json['nameGoods'] as String?,
      groupGoods: json['groupGoods'] as String?,
      conditionGoods: json['conditionGoods'] as String?,
      firstCost: (json['firstCost'] as num?)?.toDouble(),
      residualCost: (json['residualCost'] as num?)?.toDouble(),
      dateStart: json['dateStart'] == null
          ? null
          : DateTime.parse(json['dateStart'] as String),
      employee: json['employee'] == null
          ? null
          : EmployeeEntity.fromJson(json['employee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GoodsEntityImplToJson(_$GoodsEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inventoryNumberGoods': instance.inventoryNumberGoods,
      'nameGoods': instance.nameGoods,
      'groupGoods': instance.groupGoods,
      'conditionGoods': instance.conditionGoods,
      'firstCost': instance.firstCost,
      'residualCost': instance.residualCost,
      'dateStart': instance.dateStart?.toIso8601String(),
      'employee': instance.employee,
    };
