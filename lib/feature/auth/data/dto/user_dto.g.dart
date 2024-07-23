// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => UserDto(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      fullName: json['fullName'],
      jobPost: json['jobPost'],
      accessToken: json['accessToken'],
      refreshToken: json['refreshToken'],
    );

Map<String, dynamic> _$UserDtoToJson(UserDto instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'fullName': instance.fullName,
      'jobPost': instance.jobPost,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
