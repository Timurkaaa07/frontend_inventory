import 'package:freezed_annotation/freezed_annotation.dart';

import '../employee/employee_entity.dart';

part 'goods_entity.freezed.dart';
part 'goods_entity.g.dart';

@freezed
class GoodsEntity with _$GoodsEntity {

  const factory GoodsEntity({
    required int id,
    required int inventoryNumberGoods,
    String? nameGoods,
    String? groupGoods,
    String? conditionGoods,
    double? firstCost,
    double? residualCost,
    DateTime? dateStart,
    EmployeeEntity? employee,
  }) = _GoodsEntity;

  factory GoodsEntity.fromJson(Map<String, dynamic> json) =>
      _$GoodsEntityFromJson(json);
}