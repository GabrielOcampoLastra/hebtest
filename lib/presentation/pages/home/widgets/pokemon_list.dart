import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hebtest/presentation/pages/home/widgets/pokemon_item_list.dart';

import '../../../../domain/entities/pokemon/pokemon_entity.dart';
import '../../../blocs/pokemon_list/pokemon_list_bloc.dart';
import '../../../blocs/pokemon_list/pokemon_list_state/pokemon_list_state.dart';

class PokemonList extends StatelessWidget {
  const PokemonList({super.key, required this.onTap});
  final ValueChanged<PokemonEntity> onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonListBloc, PokemonListState>(
      builder: (context, state) => GridView.count(
        controller: state.scrollController,
        padding: const EdgeInsets.symmetric(vertical: 16),
        crossAxisCount: 3,
        children: List.generate(
            state.when(
                initial: () => 0,
                loading: (list) => list.length + 1,
                loaded: (list) => list.length,
                error: (_) => 0), (index) {
          final showLoading = state.maybeWhen(
            loading: (listTmp) => index == listTmp.length,
            orElse: () => false,
          );
          if (showLoading) {
            return const Center(
              child: SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(color: Color.fromARGB(255, 220, 10, 45)),
              ),
            );
          }
          return PokemonItemList(
            pokemon: state.when(
                initial: () => null,
                loading: (list) => list[index],
                loaded: (list) => list[index],
                error: (_) => null),
            onTap: onTap,
          );
        }),
      ),
    );
  }
}
