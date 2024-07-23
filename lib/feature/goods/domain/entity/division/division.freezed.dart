// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'division.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DivisionEntity _$DivisionEntityFromJson(Map<String, dynamic> json) {
  return _DivisionEntity.fromJson(json);
}

/// @nodoc
mixin _$DivisionEntity {
  int get id => throw _privateConstructorUsedError;
  String? get nameDivision => throw _privateConstructorUsedError;
  RoomEntity? get room => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DivisionEntityCopyWith<DivisionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DivisionEntityCopyWith<$Res> {
  factory $DivisionEntityCopyWith(
          DivisionEntity value, $Res Function(DivisionEntity) then) =
      _$DivisionEntityCopyWithImpl<$Res, DivisionEntity>;
  @useResult
  $Res call({int id, String? nameDivision, RoomEntity? room});

  $RoomEntityCopyWith<$Res>? get room;
}

/// @nodoc
class _$DivisionEntityCopyWithImpl<$Res, $Val extends DivisionEntity>
    implements $DivisionEntityCopyWith<$Res> {
  _$DivisionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameDivision = freezed,
    Object? room = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nameDivision: freezed == nameDivision
          ? _value.nameDivision
          : nameDivision // ignore: cast_nullable_to_non_nullable
              as String?,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as RoomEntity?,
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
}

/// @nodoc
abstract class _$$DivisionEntityImplCopyWith<$Res>
    implements $DivisionEntityCopyWith<$Res> {
  factory _$$DivisionEntityImplCopyWith(_$DivisionEntityImpl value,
          $Res Function(_$DivisionEntityImpl) then) =
      __$$DivisionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? nameDivision, RoomEntity? room});

  @override
  $RoomEntityCopyWith<$Res>? get room;
}

/// @nodoc
class __$$DivisionEntityImplCopyWithImpl<$Res>
    extends _$DivisionEntityCopyWithImpl<$Res, _$DivisionEntityImpl>
    implements _$$DivisionEntityImplCopyWith<$Res> {
  __$$DivisionEntityImplCopyWithImpl(
      _$DivisionEntityImpl _value, $Res Function(_$DivisionEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameDivision = freezed,
    Object? room = freezed,
  }) {
    return _then(_$DivisionEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nameDivision: freezed == nameDivision
          ? _value.nameDivision
          : nameDivision // ignore: cast_nullable_to_non_nullable
              as String?,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as RoomEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DivisionEntityImpl implements _DivisionEntity {
  const _$DivisionEntityImpl({required this.id, this.nameDivision, this.room});

  factory _$DivisionEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DivisionEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String? nameDivision;
  @override
  final RoomEntity? room;

  @override
  String toString() {
    return 'DivisionEntity(id: $id, nameDivision: $nameDivision, room: $room)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DivisionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nameDivision, nameDivision) ||
                other.nameDivision == nameDivision) &&
            (identical(other.room, room) || other.room == room));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nameDivision, room);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DivisionEntityImplCopyWith<_$DivisionEntityImpl> get copyWith =>
      __$$DivisionEntityImplCopyWithImpl<_$DivisionEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DivisionEntityImplToJson(
      this,
    );
  }
}

abstract class _DivisionEntity implements DivisionEntity {
  const factory _DivisionEntity(
      {required final int id,
      final String? nameDivision,
      final RoomEntity? room}) = _$DivisionEntityImpl;

  factory _DivisionEntity.fromJson(Map<String, dynamic> json) =
      _$DivisionEntityImpl.fromJson;

  @override
  int get id;
  @override
  String? get nameDivision;
  @override
  RoomEntity? get room;
  @override
  @JsonKey(ignore: true)
  _$$DivisionEntityImplCopyWith<_$DivisionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
