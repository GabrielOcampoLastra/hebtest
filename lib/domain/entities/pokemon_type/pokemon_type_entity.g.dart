// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_type_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonTypeEntityImpl _$$PokemonTypeEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonTypeEntityImpl(
      name: json['type'] == null
          ? ''
          : PokemonTypeEntity.nameFromJson(
              json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonTypeEntityImplToJson(
        _$PokemonTypeEntityImpl instance) =>
    <String, dynamic>{
      'type': PokemonTypeEntity.nameToJson(instance.name),
    };
