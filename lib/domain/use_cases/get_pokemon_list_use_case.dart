import 'package:flutter/material.dart';
import 'package:hebtest/domain/entities/pokemon/pokemon_entity.dart';
import 'package:hebtest/domain/repositories/pokemon_repository.dart';
import 'package:hebtest/domain/utils/either/either.dart';
import 'package:hebtest/domain/utils/use_case.dart';

import '../responses/get_pokemon_list/get_pokemon_list_response.dart';

class GetPokemonListUseCase
    extends UseCase<Either<String, GetPokemonListResponse>, String?> {
  GetPokemonListUseCase(this._pokemonRepository);
  final PokemonRepository _pokemonRepository;
  @override
  Future<Either<String, GetPokemonListResponse>> call(String? params) async {
    debugPrint('GetPokemonListUseCase');
    final result = await _pokemonRepository.getList(url: params ?? 'https://pokeapi.co/api/v2/pokemon');
    return result.when(
      left: (failure) => Left(failure),
      right: (response) => Right(response),
    );
  }
}
