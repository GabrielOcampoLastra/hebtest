import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hebtest/domain/entities/pokemon/pokemon_entity.dart';

part 'get_pokemon_list_response.freezed.dart';
part 'get_pokemon_list_response.g.dart';

@freezed
class GetPokemonListResponse with _$GetPokemonListResponse {
  const factory GetPokemonListResponse({
    @Default(0) int count,
    String? next,
    String? previous,
    @JsonKey(name: 'results') @Default([]) List<PokemonEntity> list,
  }) = _GetPokemonListResponse;

  factory GetPokemonListResponse.fromJson(Map<String, Object?> json) =>
      _$GetPokemonListResponseFromJson(json);
}

