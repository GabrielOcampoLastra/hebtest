// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonEntityImpl _$$PokemonEntityImplFromJson(Map<String, dynamic> json) =>
    _$PokemonEntityImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      url: json['url'] as String? ?? '',
      weight: (json['weight'] as num?)?.toInt() ?? 0,
      height: (json['height'] as num?)?.toInt() ?? 0,
      abilities: (json['abilities'] as List<dynamic>?)
              ?.map((e) => AbilityEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      types: (json['types'] as List<dynamic>?)
              ?.map(
                  (e) => PokemonTypeEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      stats: (json['stats'] as List<dynamic>?)
              ?.map(
                  (e) => PokemonStatEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PokemonEntityImplToJson(_$PokemonEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'weight': instance.weight,
      'height': instance.height,
      'abilities': instance.abilities,
      'types': instance.types,
      'stats': instance.stats,
    };
