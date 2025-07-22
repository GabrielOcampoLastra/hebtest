import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hebtest/domain/use_cases/get_pokemon_desc_use_case.dart';
import 'package:hebtest/heb_test_app.dart';

import 'data/repository_implementations/pokemon_repository_impl.dart';
import 'data/services/http/http_service.dart';
import 'data/services/http/http_service_impl.dart';
import 'domain/repositories/pokemon_repository.dart';
import 'domain/use_cases/get_pokemon_list_use_case.dart';
import 'domain/use_cases/get_pokemon_use_case.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final sl = GetIt.instance;
  sl.registerSingleton<HttpService>(HttpServiceImpl());
  sl.registerSingleton<PokemonRepository>(PokemonRepositoryImpl(sl()));
  sl.registerSingleton(GetPokemonListUseCase(sl()));
  sl.registerSingleton(GetPokemonUseCase(sl()));
  sl.registerSingleton(GetPokemonDescUseCase(sl()));
  runApp(const HebTestApp());
}
