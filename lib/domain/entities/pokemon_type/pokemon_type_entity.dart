import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_type_entity.freezed.dart';
part 'pokemon_type_entity.g.dart';

@freezed
class PokemonTypeEntity with _$PokemonTypeEntity {
  const factory PokemonTypeEntity({
    @JsonKey(
      name: 'type',
      fromJson: PokemonTypeEntity.nameFromJson,
      toJson: PokemonTypeEntity.nameToJson,
    )
    @Default('')
    String name,
  }) = _PokemonTypeEntity;

  factory PokemonTypeEntity.fromJson(Map<String, Object?> json) =>
      _$PokemonTypeEntityFromJson(json);

  static String nameFromJson(Map<String, dynamic> map) {
    return (map['name'] as String?) ?? '';
  }

  static String nameToJson(String json) {
    return '';
  }
}

extension PokemonTypeEntityX on PokemonTypeEntity {
  Color getColor() {
    if(name == 'fire') return Colors.red;
    return Colors.grey;
  }
}
