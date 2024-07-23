part of 'detail_goods_cubit.dart';

@freezed
class DetailGoodsState with _$DetailGoodsState {
  const factory DetailGoodsState({
    @Default(AsyncSnapshot.nothing()) AsyncSnapshot asyncSnapshot,
    GoodsEntity? goodsEntity,
}) = _DetailGoodsState;
}