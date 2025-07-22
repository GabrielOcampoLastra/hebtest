import 'package:hebtest/domain/entities/pokemon/pokemon_entity.dart';
import 'package:hebtest/domain/responses/get_pokemon_list/get_pokemon_list_response.dart';
import 'package:hebtest/domain/utils/either/either.dart';

abstract class PokemonRepository {
  Future<Either<String, GetPokemonListResponse>> getList({
    required String url,
  });
  Future<Either<String, PokemonEntity>> getByUrl({
    required String url,
  });
  Future<Either<String, String>> getPokemonDesc({
    required String pokemonId,
  });
}
