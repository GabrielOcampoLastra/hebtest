// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_stat_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonStatEntityImpl _$$PokemonStatEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonStatEntityImpl(
      name: json['stat'] == null
          ? ''
          : PokemonStatEntity.nameFromJson(
              json['stat'] as Map<String, dynamic>),
      value: (json['base_stat'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PokemonStatEntityImplToJson(
        _$PokemonStatEntityImpl instance) =>
    <String, dynamic>{
      'stat': PokemonStatEntity.nameToJson(instance.name),
      'base_stat': instance.value,
    };
