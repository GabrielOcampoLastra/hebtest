import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hebtest/presentation/blocs/pokemon_list/pokemon_list_event/pokemon_list_event.dart';
import 'package:hebtest/presentation/pages/home/widgets/pokemon_list.dart';

import '../../blocs/pokemon_list/pokemon_list_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PokemonListBloc>(
      create: (_) => PokemonListBloc()..add(PokemonListEvent.onCreated()),
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 220, 10, 45),
        appBar: AppBar(
          title: const Text('Pokedex'),
          titleTextStyle: Theme.of(context)
              .textTheme
              .headlineLarge
              ?.copyWith(color: Colors.white),
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: PokemonList(
                  onTap: (pokemon) => context.pushNamed(
                    'pokemon_detail',
                    extra: pokemon,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
