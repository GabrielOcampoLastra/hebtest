import 'package:hebtest/data/services/http/http_service.dart';
import 'package:hebtest/domain/entities/pokemon/pokemon_entity.dart';
import 'package:hebtest/domain/repositories/pokemon_repository.dart';
import 'package:hebtest/domain/responses/get_pokemon_list/get_pokemon_list_response.dart';
import 'package:hebtest/domain/utils/either/either.dart';

class PokemonRepositoryImpl extends PokemonRepository {
  PokemonRepositoryImpl(this._httpService);
  final HttpService _httpService;
  @override
  Future<Either<String, GetPokemonListResponse>> getList({
    required String url,
  }) async {
    final result = await _httpService.get(endpoint: url);
    return result.when(
      left: (failure) => Left(failure),
      right: (map) => Right(GetPokemonListResponse.fromJson(map)),
    );
  }

  @override
  Future<Either<String, PokemonEntity>> getByUrl({
    required String url,
  }) async {
    final result = await _httpService.get(endpoint: url);
    return result.when(
      left: (failure) => Left(failure),
      right: (map) => Right(PokemonEntity.fromJson(map)),
    );
  }

  @override
  Future<Either<String, String>> getPokemonDesc({
    required String pokemonId,
  }) async {
    final result = await _httpService.get(
      endpoint: 'https://pokeapi.co/api/v2/characteristic/$pokemonId',
    );
    return result.when(
      left: (failure) => Left(failure),
      right: (map) {
        var result = '';
        final list = map['descriptions'] as List<dynamic>;
        for(var i = 0; i < list.length; i++) {
          final itemMap = list[i] as Map<String, dynamic>;
          final languageMap = itemMap['language'] as Map<String, dynamic>;
          final language = languageMap['name'] as String;
          if(language == 'en') {
            result = itemMap['description'] as String;
          }
        }
        return Right(result);
      },
    );
  }
}
