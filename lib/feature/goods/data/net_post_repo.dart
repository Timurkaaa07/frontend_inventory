
import 'package:client_it/feature/goods/domain/entity/goods/goods_entity.dart';
import 'package:injectable/injectable.dart';

import '../../../app/domain/app_appi.dart';
import '../domain/post_repo.dart';


@Injectable(as: PostRepo)
class NetPostRepo implements PostRepo {
  
  final AppApi api;

  NetPostRepo(this.api);

  @override
  Future<Iterable> fetchGoods() async {
    try {
      final response = await api.fetchGoods();
      return response.data;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<String> createGood(Map args) async {
    try {
      final response = await api.createGood(args);
      return response.data["message"];
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<GoodsEntity> fetchGood(String id) async {
    try {
      final response = await api.fetchGood(id);
      return GoodsEntity.fromJson(response.data["data"]);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future deleteGood(String id) async {
    try {
       await api.deleteGood (id);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future scanBarcode(String inventorynumbergoods) async {
    try {
      final response = await api.scanBarcode(inventorynumbergoods);
      return response.data;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<String> createInventoryRecord(Map args) async {
    try {
      final response = await api.createInventoryRecord(args);
      return response.data["message"];
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<List<List<dynamic>>> fetchIL() async {
    try {
      final response = await api.fetchIL();
      return List<List<dynamic>>.from(response);
    } catch (_) {
      rethrow;
    }
  }

}