import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hebtest/domain/entities/ability_entity/ability_entity.dart';
import 'package:hebtest/domain/entities/pokemon_stat/pokemon_stat_entity.dart';

import '../pokemon_type/pokemon_type_entity.dart';

part 'pokemon_entity.freezed.dart';
part 'pokemon_entity.g.dart';

@freezed
class PokemonEntity with _$PokemonEntity {
  const factory PokemonEntity({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String url,
    @Default(0) int weight,
    @Default(0) int height,
    @Default([]) List<AbilityEntity> abilities,
    @Default([]) List<PokemonTypeEntity> types,
    @Default([]) List<PokemonStatEntity> stats,
  }) = _PokemonEntity;

  factory PokemonEntity.fromJson(Map<String, Object?> json) =>
      _$PokemonEntityFromJson(json);
}