import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:hebtest/data/repository_implementations/pokemon_repository_impl.dart';
import 'package:hebtest/data/services/http/http_service.dart';
import 'package:hebtest/data/services/http/http_service_impl.dart';
import 'package:hebtest/domain/entities/pokemon/pokemon_entity.dart';
import 'package:hebtest/domain/repositories/pokemon_repository.dart';
import 'package:hebtest/domain/use_cases/get_pokemon_list_use_case.dart';

import 'presentation/pages/home/home_page.dart';
import 'presentation/pages/pokemon_detail/pokemon_detail_page.dart';

class HebTestApp extends StatelessWidget {
  const HebTestApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: MaterialApp.router(
        title: 'HEB Test App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: GoRouter(
          routes: [
            GoRoute(
              name: 'home',
              path: '/',
              builder: (_, __) => const HomePage(),
              routes: [
                GoRoute(
                  name: 'pokemon_detail',
                  path: 'pokemon_detail',
                  builder: (_, state) => PokemonDetailPage(
                    pokemon: state.extra as PokemonEntity,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
