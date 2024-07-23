
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../domain/app_appi.dart';
import '../domain/app_config.dart';
import 'auth_interceptor.dart';


@Singleton(as: AppApi)
class DioAppApi implements AppApi {

  late final Dio dio;
  late final Dio dioTokens;

  DioAppApi(AppConfig appConfig)
  {
    final options = BaseOptions(
      baseUrl: appConfig.baseUrl,
      connectTimeout: 15000,
    );
    dio = Dio(options);
    dioTokens = Dio(options);
    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger());
      dioTokens.interceptors.add(PrettyDioLogger());
    }
    dio.interceptors.add(AuthInterceptor());

  }

  @override
  Future<Response> getProfile() {
    try {
      return dio.get("/auth/user");
    } catch(_) {
      rethrow;
    }
  }

  @override
  Future<Response> passwordUpdate({required String oldPassword, required String newPassword}) {
    return dio.put("/auth/user", queryParameters: {
      "oldPassword": oldPassword,
      "newPassword": newPassword,
    });
  }

  @override
  Future<Response> refreshToken({String? refreshToken}) {
    try {
      return dioTokens.post("/auth/token/$refreshToken");
    } catch(_) {
      rethrow;
    }
  }

  @override
  Future<Response> signIn({required String password, required String username}) {
    try {
      return dio.post("/auth/token",
          data: {"username": username, "password": password});
    } catch(_) {
      rethrow;
    }
  }

  @override
  Future<Response> signUp({
    required String password,
    required String username,
    required String email,
    required String fullName,
    required String jobPost}) {
    try {
      return dio.put("/auth/token",
          data: {
            "username": username,
            "password": password,
            "email": email,
            "fullName": fullName,
            "jobPost":jobPost});
    } catch(_) {
      rethrow;
    }
  }

  @override
  Future<Response> userUpdate({String? username, String? email}) {
    return dio.post("/auth/user",
        data: {
          "username": username,
          "email": email});
  }

  @override
  Future request(String path) {
    try {
      return dio.request(path);
    } catch(_) {
      rethrow;
    }
  }

  @override
  Future fetch(RequestOptions requestOptions) {
    return dioTokens.fetch(requestOptions);
  }

  @override
  Future fetchGoods() {
   return dio.get("/data/good");
  }

  @override
  Future<List<List<dynamic>>> fetchIL() async {
    try {
      final response = await dio.get("/data/inventlist");
      return List<List<dynamic>>.from(response.data['data']);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future fetchILID(String id) {
    return dio.get("/data/inventlist/$id");
  }

  @override
  Future fetchGood(String id) {
    return dio.get("/data/good/$id");
  }

  @override
  Future createGood(Map args) {
    return dio.post("/data/good",
        data: {
          "inventoryNumberGoods": args["inventoryNumberGoods"],
          "nameGoods": args["nameGoods"],
          "groupGoods": args["groupGoods"],
          "firstCost": args["firstCost"],
          "residualCost": args["residualCost"],
          "conditionGoods": args["conditionGoods"],
          "idRoom": args["idRoom"]
    });
  }

  @override
  Future deleteGood(String id) {
    return dio.delete("/data/good/$id");
  }

  @override
  Future scanBarcode(String inventorynumbergoods) {
    return dio.get("/data/goods/$inventorynumbergoods");
  }

  @override
  Future createInventoryRecord(Map args) {
    return dio.post("/data/inventrecord",
        data: {
          "statusIR": args["statusIR"],
          "inventoryList": {
            "id": args["inventoryListId"]
          },
          "goodsList": {
            "id": args["goodsList"]
          }
        });
  }
}
