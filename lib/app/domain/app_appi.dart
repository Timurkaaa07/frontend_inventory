import 'package:dio/dio.dart';

abstract class AppApi {

  Future<dynamic> signUp({
    required String password,
    required String username,
    required String email,
    required String fullName,
    required String jobPost
  });

  Future<dynamic> signIn({
    required String password,
    required String username,
  });

  Future<dynamic> getProfile();

  Future<dynamic> userUpdate(
      {
        String? username,
        String? email
      }
      );
  Future<dynamic> passwordUpdate(
      {
        required String oldPassword,
        required String newPassword
      }
      );
  Future<dynamic> refreshToken({String? refreshToken});

  Future<dynamic> request(String path);
  Future<dynamic> fetch(RequestOptions requestOptions);

  Future<dynamic> fetchGoods();
  Future<dynamic> fetchGood(String id);
  Future<dynamic> scanBarcode(String inventorynumbergoods);
  Future<dynamic> createInventoryRecord(Map args);
  Future<dynamic> deleteGood(String id);

  Future<dynamic> createGood(Map args);

  Future<dynamic> fetchIL();
  Future<dynamic> fetchILID(String id);
}