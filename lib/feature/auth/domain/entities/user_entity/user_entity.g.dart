// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserEntityImpl _$$UserEntityImplFromJson(Map<String, dynamic> json) =>
    _$UserEntityImpl(
      email: json['email'] as String,
      username: json['username'] as String,
      id: json['id'] as String,
      fullName: json['fullName'] as String,
      jobPost: json['jobPost'] as String,
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$UserEntityImplToJson(_$UserEntityImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'id': instance.id,
      'fullName': instance.fullName,
      'jobPost': instance.jobPost,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
