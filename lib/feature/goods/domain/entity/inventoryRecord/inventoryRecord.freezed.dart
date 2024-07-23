// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventoryRecord.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InventoryRecordEntity _$InventoryRecordEntityFromJson(
    Map<String, dynamic> json) {
  return _InventoryRecordEntity.fromJson(json);
}

/// @nodoc
mixin _$InventoryRecordEntity {
  int get id => throw _privateConstructorUsedError;
  DateTime? get inventRecord => throw _privateConstructorUsedError;
  String? get statusIR => throw _privateConstructorUsedError;
  EmployeeEntity? get employee => throw _privateConstructorUsedError;
  GoodsEntity? get goodsList => throw _privateConstructorUsedError;
  InventoryListEntity? get inventoryList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InventoryRecordEntityCopyWith<InventoryRecordEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryRecordEntityCopyWith<$Res> {
  factory $InventoryRecordEntityCopyWith(InventoryRecordEntity value,
          $Res Function(InventoryRecordEntity) then) =
      _$InventoryRecordEntityCopyWithImpl<$Res, InventoryRecordEntity>;
  @useResult
  $Res call(
      {int id,
      DateTime? inventRecord,
      String? statusIR,
      EmployeeEntity? employee,
      GoodsEntity? goodsList,
      InventoryListEntity? inventoryList});

  $EmployeeEntityCopyWith<$Res>? get employee;
  $GoodsEntityCopyWith<$Res>? get goodsList;
  $InventoryListEntityCopyWith<$Res>? get inventoryList;
}

/// @nodoc
class _$InventoryRecordEntityCopyWithImpl<$Res,
        $Val extends InventoryRecordEntity>
    implements $InventoryRecordEntityCopyWith<$Res> {
  _$InventoryRecordEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? inventRecord = freezed,
    Object? statusIR = freezed,
    Object? employee = freezed,
    Object? goodsList = freezed,
    Object? inventoryList = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      inventRecord: freezed == inventRecord
          ? _value.inventRecord
          : inventRecord // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      statusIR: freezed == statusIR
          ? _value.statusIR
          : statusIR // ignore: cast_nullable_to_non_nullable
              as String?,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeEntity?,
      goodsList: freezed == goodsList
          ? _value.goodsList
          : goodsList // ignore: cast_nullable_to_non_nullable
              as GoodsEntity?,
      inventoryList: freezed == inventoryList
          ? _value.inventoryList
          : inventoryList // ignore: cast_nullable_to_non_nullable
              as InventoryListEntity?,
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

  @override
  @pragma('vm:prefer-inline')
  $GoodsEntityCopyWith<$Res>? get goodsList {
    if (_value.goodsList == null) {
      return null;
    }

    return $GoodsEntityCopyWith<$Res>(_value.goodsList!, (value) {
      return _then(_value.copyWith(goodsList: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InventoryListEntityCopyWith<$Res>? get inventoryList {
    if (_value.inventoryList == null) {
      return null;
    }

    return $InventoryListEntityCopyWith<$Res>(_value.inventoryList!, (value) {
      return _then(_value.copyWith(inventoryList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InventoryRecordEntityImplCopyWith<$Res>
    implements $InventoryRecordEntityCopyWith<$Res> {
  factory _$$InventoryRecordEntityImplCopyWith(
          _$InventoryRecordEntityImpl value,
          $Res Function(_$InventoryRecordEntityImpl) then) =
      __$$InventoryRecordEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime? inventRecord,
      String? statusIR,
      EmployeeEntity? employee,
      GoodsEntity? goodsList,
      InventoryListEntity? inventoryList});

  @override
  $EmployeeEntityCopyWith<$Res>? get employee;
  @override
  $GoodsEntityCopyWith<$Res>? get goodsList;
  @override
  $InventoryListEntityCopyWith<$Res>? get inventoryList;
}

/// @nodoc
class __$$InventoryRecordEntityImplCopyWithImpl<$Res>
    extends _$InventoryRecordEntityCopyWithImpl<$Res,
        _$InventoryRecordEntityImpl>
    implements _$$InventoryRecordEntityImplCopyWith<$Res> {
  __$$InventoryRecordEntityImplCopyWithImpl(_$InventoryRecordEntityImpl _value,
      $Res Function(_$InventoryRecordEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? inventRecord = freezed,
    Object? statusIR = freezed,
    Object? employee = freezed,
    Object? goodsList = freezed,
    Object? inventoryList = freezed,
  }) {
    return _then(_$InventoryRecordEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      inventRecord: freezed == inventRecord
          ? _value.inventRecord
          : inventRecord // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      statusIR: freezed == statusIR
          ? _value.statusIR
          : statusIR // ignore: cast_nullable_to_non_nullable
              as String?,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeEntity?,
      goodsList: freezed == goodsList
          ? _value.goodsList
          : goodsList // ignore: cast_nullable_to_non_nullable
              as GoodsEntity?,
      inventoryList: freezed == inventoryList
          ? _value.inventoryList
          : inventoryList // ignore: cast_nullable_to_non_nullable
              as InventoryListEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InventoryRecordEntityImpl implements _InventoryRecordEntity {
  const _$InventoryRecordEntityImpl(
      {required this.id,
      this.inventRecord,
      this.statusIR,
      this.employee,
      this.goodsList,
      this.inventoryList});

  factory _$InventoryRecordEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$InventoryRecordEntityImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime? inventRecord;
  @override
  final String? statusIR;
  @override
  final EmployeeEntity? employee;
  @override
  final GoodsEntity? goodsList;
  @override
  final InventoryListEntity? inventoryList;

  @override
  String toString() {
    return 'InventoryRecordEntity(id: $id, inventRecord: $inventRecord, statusIR: $statusIR, employee: $employee, goodsList: $goodsList, inventoryList: $inventoryList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryRecordEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.inventRecord, inventRecord) ||
                other.inventRecord == inventRecord) &&
            (identical(other.statusIR, statusIR) ||
                other.statusIR == statusIR) &&
            (identical(other.employee, employee) ||
                other.employee == employee) &&
            (identical(other.goodsList, goodsList) ||
                other.goodsList == goodsList) &&
            (identical(other.inventoryList, inventoryList) ||
                other.inventoryList == inventoryList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, inventRecord, statusIR,
      employee, goodsList, inventoryList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryRecordEntityImplCopyWith<_$InventoryRecordEntityImpl>
      get copyWith => __$$InventoryRecordEntityImplCopyWithImpl<
          _$InventoryRecordEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InventoryRecordEntityImplToJson(
      this,
    );
  }
}

abstract class _InventoryRecordEntity implements InventoryRecordEntity {
  const factory _InventoryRecordEntity(
      {required final int id,
      final DateTime? inventRecord,
      final String? statusIR,
      final EmployeeEntity? employee,
      final GoodsEntity? goodsList,
      final InventoryListEntity? inventoryList}) = _$InventoryRecordEntityImpl;

  factory _InventoryRecordEntity.fromJson(Map<String, dynamic> json) =
      _$InventoryRecordEntityImpl.fromJson;

  @override
  int get id;
  @override
  DateTime? get inventRecord;
  @override
  String? get statusIR;
  @override
  EmployeeEntity? get employee;
  @override
  GoodsEntity? get goodsList;
  @override
  InventoryListEntity? get inventoryList;
  @override
  @JsonKey(ignore: true)
  _$$InventoryRecordEntityImplCopyWith<_$InventoryRecordEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
