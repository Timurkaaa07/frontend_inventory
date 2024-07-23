// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventoryList.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InventoryListEntity _$InventoryListEntityFromJson(Map<String, dynamic> json) {
  return _InventoryListEntity.fromJson(json);
}

/// @nodoc
mixin _$InventoryListEntity {
  int get id => throw _privateConstructorUsedError;
  int get codeOrderIL => throw _privateConstructorUsedError;
  String? get datePeriod => throw _privateConstructorUsedError;
  DateTime? get dateIL => throw _privateConstructorUsedError;
  RoomEntity? get room => throw _privateConstructorUsedError;
  EmployeeEntity? get employee => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InventoryListEntityCopyWith<InventoryListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryListEntityCopyWith<$Res> {
  factory $InventoryListEntityCopyWith(
          InventoryListEntity value, $Res Function(InventoryListEntity) then) =
      _$InventoryListEntityCopyWithImpl<$Res, InventoryListEntity>;
  @useResult
  $Res call(
      {int id,
      int codeOrderIL,
      String? datePeriod,
      DateTime? dateIL,
      RoomEntity? room,
      EmployeeEntity? employee});

  $RoomEntityCopyWith<$Res>? get room;
  $EmployeeEntityCopyWith<$Res>? get employee;
}

/// @nodoc
class _$InventoryListEntityCopyWithImpl<$Res, $Val extends InventoryListEntity>
    implements $InventoryListEntityCopyWith<$Res> {
  _$InventoryListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? codeOrderIL = null,
    Object? datePeriod = freezed,
    Object? dateIL = freezed,
    Object? room = freezed,
    Object? employee = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      codeOrderIL: null == codeOrderIL
          ? _value.codeOrderIL
          : codeOrderIL // ignore: cast_nullable_to_non_nullable
              as int,
      datePeriod: freezed == datePeriod
          ? _value.datePeriod
          : datePeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      dateIL: freezed == dateIL
          ? _value.dateIL
          : dateIL // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as RoomEntity?,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomEntityCopyWith<$Res>? get room {
    if (_value.room == null) {
      return null;
    }

    return $RoomEntityCopyWith<$Res>(_value.room!, (value) {
      return _then(_value.copyWith(room: value) as $Val);
    });
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
abstract class _$$InventoryListEntityImplCopyWith<$Res>
    implements $InventoryListEntityCopyWith<$Res> {
  factory _$$InventoryListEntityImplCopyWith(_$InventoryListEntityImpl value,
          $Res Function(_$InventoryListEntityImpl) then) =
      __$$InventoryListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int codeOrderIL,
      String? datePeriod,
      DateTime? dateIL,
      RoomEntity? room,
      EmployeeEntity? employee});

  @override
  $RoomEntityCopyWith<$Res>? get room;
  @override
  $EmployeeEntityCopyWith<$Res>? get employee;
}

/// @nodoc
class __$$InventoryListEntityImplCopyWithImpl<$Res>
    extends _$InventoryListEntityCopyWithImpl<$Res, _$InventoryListEntityImpl>
    implements _$$InventoryListEntityImplCopyWith<$Res> {
  __$$InventoryListEntityImplCopyWithImpl(_$InventoryListEntityImpl _value,
      $Res Function(_$InventoryListEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? codeOrderIL = null,
    Object? datePeriod = freezed,
    Object? dateIL = freezed,
    Object? room = freezed,
    Object? employee = freezed,
  }) {
    return _then(_$InventoryListEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      codeOrderIL: null == codeOrderIL
          ? _value.codeOrderIL
          : codeOrderIL // ignore: cast_nullable_to_non_nullable
              as int,
      datePeriod: freezed == datePeriod
          ? _value.datePeriod
          : datePeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      dateIL: freezed == dateIL
          ? _value.dateIL
          : dateIL // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as RoomEntity?,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InventoryListEntityImpl implements _InventoryListEntity {
  const _$InventoryListEntityImpl(
      {required this.id,
      required this.codeOrderIL,
      this.datePeriod,
      this.dateIL,
      this.room,
      this.employee});

  factory _$InventoryListEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$InventoryListEntityImplFromJson(json);

  @override
  final int id;
  @override
  final int codeOrderIL;
  @override
  final String? datePeriod;
  @override
  final DateTime? dateIL;
  @override
  final RoomEntity? room;
  @override
  final EmployeeEntity? employee;

  @override
  String toString() {
    return 'InventoryListEntity(id: $id, codeOrderIL: $codeOrderIL, datePeriod: $datePeriod, dateIL: $dateIL, room: $room, employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryListEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.codeOrderIL, codeOrderIL) ||
                other.codeOrderIL == codeOrderIL) &&
            (identical(other.datePeriod, datePeriod) ||
                other.datePeriod == datePeriod) &&
            (identical(other.dateIL, dateIL) || other.dateIL == dateIL) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, codeOrderIL, datePeriod, dateIL, room, employee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryListEntityImplCopyWith<_$InventoryListEntityImpl> get copyWith =>
      __$$InventoryListEntityImplCopyWithImpl<_$InventoryListEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InventoryListEntityImplToJson(
      this,
    );
  }
}

abstract class _InventoryListEntity implements InventoryListEntity {
  const factory _InventoryListEntity(
      {required final int id,
      required final int codeOrderIL,
      final String? datePeriod,
      final DateTime? dateIL,
      final RoomEntity? room,
      final EmployeeEntity? employee}) = _$InventoryListEntityImpl;

  factory _InventoryListEntity.fromJson(Map<String, dynamic> json) =
      _$InventoryListEntityImpl.fromJson;

  @override
  int get id;
  @override
  int get codeOrderIL;
  @override
  String? get datePeriod;
  @override
  DateTime? get dateIL;
  @override
  RoomEntity? get room;
  @override
  EmployeeEntity? get employee;
  @override
  @JsonKey(ignore: true)
  _$$InventoryListEntityImplCopyWith<_$InventoryListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
