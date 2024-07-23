part of 'goods_cubit.dart';



@freezed
class GoodsState with _$GoodsState {
  const factory GoodsState({
    @JsonKey(ignore: true) AsyncSnapshot? asyncSnapshot,
    @Default([]) List<GoodsEntity> goodsList,
    @Default([]) List<dynamic> inventoryList,
  }) = _GoodsState;

  factory GoodsState.fromJson(Map<String, dynamic> json) =>
      _$GoodsStateFromJson(json);
}
