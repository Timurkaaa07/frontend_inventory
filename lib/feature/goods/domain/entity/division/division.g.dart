// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DivisionEntityImpl _$$DivisionEntityImplFromJson(Map<String, dynamic> json) =>
    _$DivisionEntityImpl(
      id: (json['id'] as num).toInt(),
      nameDivision: json['nameDivision'] as String?,
      room: json['room'] == null
          ? null
          : RoomEntity.fromJson(json['room'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DivisionEntityImplToJson(
        _$DivisionEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameDivision': instance.nameDivision,
      'room': instance.room,
    };
