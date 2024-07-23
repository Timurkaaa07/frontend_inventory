// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goods_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoodsEntity _$GoodsEntityFromJson(Map<String, dynamic> json) {
  return _GoodsEntity.fromJson(json);
}

/// @nodoc
mixin _$GoodsEntity {
  int get id => throw _privateConstructorUsedError;
  int get inventoryNumberGoods => throw _privateConstructorUsedError;
  String? get nameGoods => throw _privateConstructorUsedError;
  String? get groupGoods => throw _privateConstructorUsedError;
  String? get conditionGoods => throw _privateConstructorUsedError;
  double? get firstCost => throw _privateConstructorUsedError;
  double? get residualCost => throw _privateConstructorUsedError;
  DateTime? get dateStart => throw _privateConstructorUsedError;
  EmployeeEntity? get employee => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoodsEntityCopyWith<GoodsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsEntityCopyWith<$Res> {
  factory $GoodsEntityCopyWith(
          GoodsEntity value, $Res Function(GoodsEntity) then) =
      _$GoodsEntityCopyWithImpl<$Res, GoodsEntity>;
  @useResult
  $Res call(
      {int id,
      int inventoryNumberGoods,
      String? nameGoods,
      String? groupGoods,
      String? conditionGoods,
      double? firstCost,
      double? residualCost,
      DateTime? dateStart,
      EmployeeEntity? employee});

  $EmployeeEntityCopyWith<$Res>? get employee;
}

/// @nodoc
class _$GoodsEntityCopyWithImpl<$Res, $Val extends GoodsEntity>
    implements $GoodsEntityCopyWith<$Res> {
  _$GoodsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? inventoryNumberGoods = null,
    Object? nameGoods = freezed,
    Object? groupGoods = freezed,
    Object? conditionGoods = freezed,
    Object? firstCost = freezed,
    Object? residualCost = freezed,
    Object? dateStart = freezed,
    Object? employee = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      inventoryNumberGoods: null == inventoryNumberGoods
          ? _value.inventoryNumberGoods
          : inventoryNumberGoods // ignore: cast_nullable_to_non_nullable
              as int,
      nameGoods: freezed == nameGoods
          ? _value.nameGoods
          : nameGoods // ignore: cast_nullable_to_non_nullable
              as String?,
      groupGoods: freezed == groupGoods
          ? _value.groupGoods
          : groupGoods // ignore: cast_nullable_to_non_nullable
              as String?,
      conditionGoods: freezed == conditionGoods
          ? _value.conditionGoods
          : conditionGoods // ignore: cast_nullable_to_non_nullable
              as String?,
      firstCost: freezed == firstCost
          ? _value.firstCost
          : firstCost // ignore: cast_nullable_to_non_nullable
              as double?,
      residualCost: freezed == residualCost
          ? _value.residualCost
          : residualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      dateStart: freezed == dateStart
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeEntityCopyWith<$Res>? get employee {
    if (_value.employee == null) {
      return null;
    }

    return $EmployeeEntityCopyWith<$Res>(_value.employee!, (value) {
      return _then(_value.copyWith(employee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GoodsEntityImplCopyWith<$Res>
    implements $GoodsEntityCopyWith<$Res> {
  factory _$$GoodsEntityImplCopyWith(
          _$GoodsEntityImpl value, $Res Function(_$GoodsEntityImpl) then) =
      __$$GoodsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int inventoryNumberGoods,
      String? nameGoods,
      String? groupGoods,
      String? conditionGoods,
      double? firstCost,
      double? residualCost,
      DateTime? dateStart,
      EmployeeEntity? employee});

  @override
  $EmployeeEntityCopyWith<$Res>? get employee;
}

/// @nodoc
class __$$GoodsEntityImplCopyWithImpl<$Res>
    extends _$GoodsEntityCopyWithImpl<$Res, _$GoodsEntityImpl>
    implements _$$GoodsEntityImplCopyWith<$Res> {
  __$$GoodsEntityImplCopyWithImpl(
      _$GoodsEntityImpl _value, $Res Function(_$GoodsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? inventoryNumberGoods = null,
    Object? nameGoods = freezed,
    Object? groupGoods = freezed,
    Object? conditionGoods = freezed,
    Object? firstCost = freezed,
    Object? residualCost = freezed,
    Object? dateStart = freezed,
    Object? employee = freezed,
  }) {
    return _then(_$GoodsEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      inventoryNumberGoods: null == inventoryNumberGoods
          ? _value.inventoryNumberGoods
          : inventoryNumberGoods // ignore: cast_nullable_to_non_nullable
              as int,
      nameGoods: freezed == nameGoods
          ? _value.nameGoods
          : nameGoods // ignore: cast_nullable_to_non_nullable
              as String?,
      groupGoods: freezed == groupGoods
          ? _value.groupGoods
          : groupGoods // ignore: cast_nullable_to_non_nullable
              as String?,
      conditionGoods: freezed == conditionGoods
          ? _value.conditionGoods
          : conditionGoods // ignore: cast_nullable_to_non_nullable
              as String?,
      firstCost: freezed == firstCost
          ? _value.firstCost
          : firstCost // ignore: cast_nullable_to_non_nullable
              as double?,
      residualCost: freezed == residualCost
          ? _value.residualCost
          : residualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      dateStart: freezed == dateStart
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoodsEntityImpl implements _GoodsEntity {
  const _$GoodsEntityImpl(
      {required this.id,
      required this.inventoryNumberGoods,
      this.nameGoods,
      this.groupGoods,
      this.conditionGoods,
      this.firstCost,
      this.residualCost,
      this.dateStart,
      this.employee});

  factory _$GoodsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoodsEntityImplFromJson(json);

  @override
  final int id;
  @override
  final int inventoryNumberGoods;
  @override
  final String? nameGoods;
  @override
  final String? groupGoods;
  @override
  final String? conditionGoods;
  @override
  final double? firstCost;
  @override
  final double? residualCost;
  @override
  final DateTime? dateStart;
  @override
  final EmployeeEntity? employee;

  @override
  String toString() {
    return 'GoodsEntity(id: $id, inventoryNumberGoods: $inventoryNumberGoods, nameGoods: $nameGoods, groupGoods: $groupGoods, conditionGoods: $conditionGoods, firstCost: $firstCost, residualCost: $residualCost, dateStart: $dateStart, employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoodsEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.inventoryNumberGoods, inventoryNumberGoods) ||
                other.inventoryNumberGoods == inventoryNumberGoods) &&
            (identical(other.nameGoods, nameGoods) ||
                other.nameGoods == nameGoods) &&
            (identical(other.groupGoods, groupGoods) ||
                other.groupGoods == groupGoods) &&
            (identical(other.conditionGoods, conditionGoods) ||
                other.conditionGoods == conditionGoods) &&
            (identical(other.firstCost, firstCost) ||
                other.firstCost == firstCost) &&
            (identical(other.residualCost, residualCost) ||
                other.residualCost == residualCost) &&
            (identical(other.dateStart, dateStart) ||
                other.dateStart == dateStart) &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      inventoryNumberGoods,
      nameGoods,
      groupGoods,
      conditionGoods,
      firstCost,
      residualCost,
      dateStart,
      employee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsEntityImplCopyWith<_$GoodsEntityImpl> get copyWith =>
      __$$GoodsEntityImplCopyWithImpl<_$GoodsEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoodsEntityImplToJson(
      this,
    );
  }
}

abstract class _GoodsEntity implements GoodsEntity {
  const factory _GoodsEntity(
      {required final int id,
      required final int inventoryNumberGoods,
      final String? nameGoods,
      final String? groupGoods,
      final String? conditionGoods,
      final double? firstCost,
      final double? residualCost,
      final DateTime? dateStart,
      final EmployeeEntity? employee}) = _$GoodsEntityImpl;

  factory _GoodsEntity.fromJson(Map<String, dynamic> json) =
      _$GoodsEntityImpl.fromJson;

  @override
  int get id;
  @override
  int get inventoryNumberGoods;
  @override
  String? get nameGoods;
  @override
  String? get groupGoods;
  @override
  String? get conditionGoods;
  @override
  double? get firstCost;
  @override
  double? get residualCost;
  @override
  DateTime? get dateStart;
  @override
  EmployeeEntity? get employee;
  @override
  @JsonKey(ignore: true)
  _$$GoodsEntityImplCopyWith<_$GoodsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
