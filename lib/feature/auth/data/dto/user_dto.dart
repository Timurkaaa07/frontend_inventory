
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user_entity/user_entity.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto {
  final dynamic id;
  final dynamic username;
  final dynamic email;
  final dynamic fullName;
  final dynamic jobPost;
  final dynamic accessToken;
  final dynamic refreshToken;

  UserDto(
      {this.id,
      this.username,
      this.email,
      this.fullName,
      this.jobPost,
      this.accessToken,
      this.refreshToken});

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
  Map<String, dynamic> toJson() => _$UserDtoToJson(this);


  UserEntity toEntity ()
  {
    return UserEntity(
        email: email.toString(),
        username: username.toString(),
        fullName: fullName.toString(),
        jobPost: jobPost.toString(),
        id: toString(),
        accessToken: accessToken,
        refreshToken:refreshToken);
  }

}