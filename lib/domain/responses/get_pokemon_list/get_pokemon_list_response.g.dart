// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_pokemon_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPokemonListResponseImpl _$$GetPokemonListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPokemonListResponseImpl(
      count: (json['count'] as num?)?.toInt() ?? 0,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      list: (json['results'] as List<dynamic>?)
              ?.map((e) => PokemonEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GetPokemonListResponseImplToJson(
        _$GetPokemonListResponseImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.list,
    };
