import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ability_entity.freezed.dart';
part 'ability_entity.g.dart';

@freezed
class AbilityEntity with _$AbilityEntity {
  const factory AbilityEntity({
    @JsonKey(
      name: 'ability',
      fromJson: AbilityEntity.nameFromJson,
      toJson: AbilityEntity.nameToJson,
    )
    @Default('')
    String name,
  }) = _AbilityEntity;

  factory AbilityEntity.fromJson(Map<String, Object?> json) =>
      _$AbilityEntityFromJson(json);

  static String nameFromJson(Map<String, dynamic> map) {
    return (map['name'] as String?) ?? '';
  }

  static String nameToJson(String json) {
    return '';
  }
}
