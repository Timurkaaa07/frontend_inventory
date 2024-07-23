import 'package:freezed_annotation/freezed_annotation.dart';

import '../room/room.dart';


part 'division.freezed.dart';
part 'division.g.dart';

@freezed
class DivisionEntity with _$DivisionEntity {

  const factory DivisionEntity({
    required int id,
    String? nameDivision,
    RoomEntity? room,
  }) = _DivisionEntity;

  factory DivisionEntity.fromJson(Map<String, dynamic> json) =>
      _$DivisionEntityFromJson(json);
}