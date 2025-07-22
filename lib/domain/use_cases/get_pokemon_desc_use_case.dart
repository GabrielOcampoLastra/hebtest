import 'package:flutter/material.dart';

import '../repositories/pokemon_repository.dart';
import '../utils/either/either.dart';
import '../utils/use_case.dart';

class GetPokemonDescUseCase
    extends UseCase<Either<String, String>, String> {
  GetPokemonDescUseCase(this._pokemonRepository);
  final PokemonRepository _pokemonRepository;
  @override
  Future<Either<String, String>> call(String params) async {
    debugPrint('GetPokemonDescUseCase');
    final result = await _pokemonRepository.getPokemonDesc(pokemonId: params);
    return result.when(
      left: (failure) => Left(failure),
      right: (desc) {
        debugPrint('desc: $desc');
        return Right(desc);
      },
    );
  }
}