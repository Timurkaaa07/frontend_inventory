import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../app/domain/app_appi.dart';
import '../domain/auth_repository.dart';
import '../domain/entities/user_entity/user_entity.dart';
import 'dto/user_dto.dart';
@Injectable(as: AuthRepository)
class NetworkAuthRepository implements AuthRepository {
  final AppApi api;

  NetworkAuthRepository(this.api);
  @override
  Future<UserEntity> getProfile() async {
    // TODO: implement getProfile
    try {
      final response = await api.getProfile();
      return UserDto.fromJson(response.data["data"]).toEntity();
    } catch(_) {
      rethrow;
    }
  }

  @override
  Future<String> passwordUpdate({required String oldPassword, required String newPassword}) async {
    try {
      final Response response = await api.passwordUpdate(newPassword: newPassword, oldPassword: oldPassword);
      return response.data["message"];
    } catch(_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> refreshToken({String? refreshToken}) async {
    try {
      final response = await api.refreshToken(refreshToken: refreshToken);
      return UserDto.fromJson(response.data["data"]).toEntity();
    } catch(_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> signIn(
      {required String password, required String username}) async {
    try {
      final response = await api.signIn(password: password, username: username);

      return UserDto.fromJson(response.data["data"]).toEntity();
    } catch(_) {
      rethrow;
    }
  }

  @override
  Future signUp({
    required String password,
    required String username,
    required String email,
    required String fullName,
    required String jobPost
  }) async {
    // TODO: implement signUp
    try {
      final response = await api.signUp(
          password: password,
          username: username,
          email: email,
          fullName: fullName,
          jobPost: jobPost
      );

      return UserDto.fromJson(response.data["data"]).toEntity();
    } catch(_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> userUpdate({String? username, String? email}) async {
    try {
      final response = await api.userUpdate(username: username, email: email);
      return UserDto.fromJson(response.data["data"]).toEntity();
    } catch(_) {
      rethrow;
    }
  }
  
}