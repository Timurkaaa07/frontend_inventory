// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goods_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoodsStateImpl _$$GoodsStateImplFromJson(Map<String, dynamic> json) =>
    _$GoodsStateImpl(
      goodsList: (json['goodsList'] as List<dynamic>?)
              ?.map((e) => GoodsEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      inventoryList: json['inventoryList'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$$GoodsStateImplToJson(_$GoodsStateImpl instance) =>
    <String, dynamic>{
      'goodsList': instance.goodsList,
      'inventoryList': instance.inventoryList,
    };
