// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_goods_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailGoodsState {
  AsyncSnapshot<dynamic> get asyncSnapshot =>
      throw _privateConstructorUsedError;
  GoodsEntity? get goodsEntity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailGoodsStateCopyWith<DetailGoodsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailGoodsStateCopyWith<$Res> {
  factory $DetailGoodsStateCopyWith(
          DetailGoodsState value, $Res Function(DetailGoodsState) then) =
      _$DetailGoodsStateCopyWithImpl<$Res, DetailGoodsState>;
  @useResult
  $Res call({AsyncSnapshot<dynamic> asyncSnapshot, GoodsEntity? goodsEntity});

  $GoodsEntityCopyWith<$Res>? get goodsEntity;
}

/// @nodoc
class _$DetailGoodsStateCopyWithImpl<$Res, $Val extends DetailGoodsState>
    implements $DetailGoodsStateCopyWith<$Res> {
  _$DetailGoodsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = null,
    Object? goodsEntity = freezed,
  }) {
    return _then(_value.copyWith(
      asyncSnapshot: null == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>,
      goodsEntity: freezed == goodsEntity
          ? _value.goodsEntity
          : goodsEntity // ignore: cast_nullable_to_non_nullable
              as GoodsEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GoodsEntityCopyWith<$Res>? get goodsEntity {
    if (_value.goodsEntity == null) {
      return null;
    }

    return $GoodsEntityCopyWith<$Res>(_value.goodsEntity!, (value) {
      return _then(_value.copyWith(goodsEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailGoodsStateImplCopyWith<$Res>
    implements $DetailGoodsStateCopyWith<$Res> {
  factory _$$DetailGoodsStateImplCopyWith(_$DetailGoodsStateImpl value,
          $Res Function(_$DetailGoodsStateImpl) then) =
      __$$DetailGoodsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncSnapshot<dynamic> asyncSnapshot, GoodsEntity? goodsEntity});

  @override
  $GoodsEntityCopyWith<$Res>? get goodsEntity;
}

/// @nodoc
class __$$DetailGoodsStateImplCopyWithImpl<$Res>
    extends _$DetailGoodsStateCopyWithImpl<$Res, _$DetailGoodsStateImpl>
    implements _$$DetailGoodsStateImplCopyWith<$Res> {
  __$$DetailGoodsStateImplCopyWithImpl(_$DetailGoodsStateImpl _value,
      $Res Function(_$DetailGoodsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = null,
    Object? goodsEntity = freezed,
  }) {
    return _then(_$DetailGoodsStateImpl(
      asyncSnapshot: null == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>,
      goodsEntity: freezed == goodsEntity
          ? _value.goodsEntity
          : goodsEntity // ignore: cast_nullable_to_non_nullable
              as GoodsEntity?,
    ));
  }
}

/// @nodoc

class _$DetailGoodsStateImpl implements _DetailGoodsState {
  const _$DetailGoodsStateImpl(
      {this.asyncSnapshot = const AsyncSnapshot.nothing(), this.goodsEntity});

  @override
  @JsonKey()
  final AsyncSnapshot<dynamic> asyncSnapshot;
  @override
  final GoodsEntity? goodsEntity;

  @override
  String toString() {
    return 'DetailGoodsState(asyncSnapshot: $asyncSnapshot, goodsEntity: $goodsEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailGoodsStateImpl &&
            (identical(other.asyncSnapshot, asyncSnapshot) ||
                other.asyncSnapshot == asyncSnapshot) &&
            (identical(other.goodsEntity, goodsEntity) ||
                other.goodsEntity == goodsEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, asyncSnapshot, goodsEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailGoodsStateImplCopyWith<_$DetailGoodsStateImpl> get copyWith =>
      __$$DetailGoodsStateImplCopyWithImpl<_$DetailGoodsStateImpl>(
          this, _$identity);
}

abstract class _DetailGoodsState implements DetailGoodsState {
  const factory _DetailGoodsState(
      {final AsyncSnapshot<dynamic> asyncSnapshot,
      final GoodsEntity? goodsEntity}) = _$DetailGoodsStateImpl;

  @override
  AsyncSnapshot<dynamic> get asyncSnapshot;
  @override
  GoodsEntity? get goodsEntity;
  @override
  @JsonKey(ignore: true)
  _$$DetailGoodsStateImplCopyWith<_$DetailGoodsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
