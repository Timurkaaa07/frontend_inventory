// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goods_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoodsState _$GoodsStateFromJson(Map<String, dynamic> json) {
  return _GoodsState.fromJson(json);
}

/// @nodoc
mixin _$GoodsState {
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot =>
      throw _privateConstructorUsedError;
  List<GoodsEntity> get goodsList => throw _privateConstructorUsedError;
  List<dynamic> get inventoryList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoodsStateCopyWith<GoodsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsStateCopyWith<$Res> {
  factory $GoodsStateCopyWith(
          GoodsState value, $Res Function(GoodsState) then) =
      _$GoodsStateCopyWithImpl<$Res, GoodsState>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<GoodsEntity> goodsList,
      List<dynamic> inventoryList});
}

/// @nodoc
class _$GoodsStateCopyWithImpl<$Res, $Val extends GoodsState>
    implements $GoodsStateCopyWith<$Res> {
  _$GoodsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? goodsList = null,
    Object? inventoryList = null,
  }) {
    return _then(_value.copyWith(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      goodsList: null == goodsList
          ? _value.goodsList
          : goodsList // ignore: cast_nullable_to_non_nullable
              as List<GoodsEntity>,
      inventoryList: null == inventoryList
          ? _value.inventoryList
          : inventoryList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoodsStateImplCopyWith<$Res>
    implements $GoodsStateCopyWith<$Res> {
  factory _$$GoodsStateImplCopyWith(
          _$GoodsStateImpl value, $Res Function(_$GoodsStateImpl) then) =
      __$$GoodsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<GoodsEntity> goodsList,
      List<dynamic> inventoryList});
}

/// @nodoc
class __$$GoodsStateImplCopyWithImpl<$Res>
    extends _$GoodsStateCopyWithImpl<$Res, _$GoodsStateImpl>
    implements _$$GoodsStateImplCopyWith<$Res> {
  __$$GoodsStateImplCopyWithImpl(
      _$GoodsStateImpl _value, $Res Function(_$GoodsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? goodsList = null,
    Object? inventoryList = null,
  }) {
    return _then(_$GoodsStateImpl(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      goodsList: null == goodsList
          ? _value._goodsList
          : goodsList // ignore: cast_nullable_to_non_nullable
              as List<GoodsEntity>,
      inventoryList: null == inventoryList
          ? _value._inventoryList
          : inventoryList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoodsStateImpl implements _GoodsState {
  const _$GoodsStateImpl(
      {@JsonKey(ignore: true) this.asyncSnapshot,
      final List<GoodsEntity> goodsList = const [],
      final List<dynamic> inventoryList = const []})
      : _goodsList = goodsList,
        _inventoryList = inventoryList;

  factory _$GoodsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoodsStateImplFromJson(json);

  @override
  @JsonKey(ignore: true)
  final AsyncSnapshot<dynamic>? asyncSnapshot;
  final List<GoodsEntity> _goodsList;
  @override
  @JsonKey()
  List<GoodsEntity> get goodsList {
    if (_goodsList is EqualUnmodifiableListView) return _goodsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goodsList);
  }

  final List<dynamic> _inventoryList;
  @override
  @JsonKey()
  List<dynamic> get inventoryList {
    if (_inventoryList is EqualUnmodifiableListView) return _inventoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inventoryList);
  }

  @override
  String toString() {
    return 'GoodsState(asyncSnapshot: $asyncSnapshot, goodsList: $goodsList, inventoryList: $inventoryList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoodsStateImpl &&
            (identical(other.asyncSnapshot, asyncSnapshot) ||
                other.asyncSnapshot == asyncSnapshot) &&
            const DeepCollectionEquality()
                .equals(other._goodsList, _goodsList) &&
            const DeepCollectionEquality()
                .equals(other._inventoryList, _inventoryList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      asyncSnapshot,
      const DeepCollectionEquality().hash(_goodsList),
      const DeepCollectionEquality().hash(_inventoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsStateImplCopyWith<_$GoodsStateImpl> get copyWith =>
      __$$GoodsStateImplCopyWithImpl<_$GoodsStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoodsStateImplToJson(
      this,
    );
  }
}

abstract class _GoodsState implements GoodsState {
  const factory _GoodsState(
      {@JsonKey(ignore: true) final AsyncSnapshot<dynamic>? asyncSnapshot,
      final List<GoodsEntity> goodsList,
      final List<dynamic> inventoryList}) = _$GoodsStateImpl;

  factory _GoodsState.fromJson(Map<String, dynamic> json) =
      _$GoodsStateImpl.fromJson;

  @override
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot;
  @override
  List<GoodsEntity> get goodsList;
  @override
  List<dynamic> get inventoryList;
  @override
  @JsonKey(ignore: true)
  _$$GoodsStateImplCopyWith<_$GoodsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
