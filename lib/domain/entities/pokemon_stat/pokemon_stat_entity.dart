import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_stat_entity.freezed.dart';
part 'pokemon_stat_entity.g.dart';

@freezed
class PokemonStatEntity with _$PokemonStatEntity {
  const factory PokemonStatEntity({
    @JsonKey(
      name: 'stat',
      fromJson: PokemonStatEntity.nameFromJson,
      toJson: PokemonStatEntity.nameToJson,
    )
    @Default('')
    String name,
    @JsonKey(
      name: 'base_stat'
    )
    @Default(0)
    int value,
  }) = _PokemonStatEntity;

  factory PokemonStatEntity.fromJson(Map<String, Object?> json) =>
      _$PokemonStatEntityFromJson(json);

  static String nameFromJson(Map<String, dynamic> map) {
    return (map['name'] as String?) ?? '';
  }

  static String nameToJson(String json) {
    return '';
  }
}