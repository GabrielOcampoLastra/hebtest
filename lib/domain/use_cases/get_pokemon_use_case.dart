import 'package:flutter/material.dart';
import 'package:hebtest/domain/entities/pokemon/pokemon_entity.dart';
import 'package:hebtest/domain/repositories/pokemon_repository.dart';
import 'package:hebtest/domain/utils/either/either.dart';
import 'package:hebtest/domain/utils/use_case.dart';

class GetPokemonUseCase
    extends UseCase<Either<String, PokemonEntity>, String> {
  GetPokemonUseCase(this._pokemonRepository);
  final PokemonRepository _pokemonRepository;
  @override
  Future<Either<String, PokemonEntity>> call(String params) async {
    debugPrint('GetPokemonUseCase');
    final result = await _pokemonRepository.getByUrl(url: params);
    return result.when(
      left: (failure) => Left(failure),
      right: (pokemon) {
        debugPrint('pokemon: $pokemon');
        return Right(pokemon);
      },
    );
  }
}