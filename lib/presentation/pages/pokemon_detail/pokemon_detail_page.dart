import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:hebtest/domain/entities/pokemon/pokemon_entity.dart';
import 'package:hebtest/domain/entities/pokemon_stat/pokemon_stat_entity.dart';
import 'package:hebtest/domain/entities/pokemon_type/pokemon_type_entity.dart';
import 'package:hebtest/domain/use_cases/get_pokemon_desc_use_case.dart';
import 'package:hebtest/domain/use_cases/get_pokemon_use_case.dart';

import '../../../domain/utils/either/either.dart';

class PokemonDetailPage extends StatelessWidget {
  const PokemonDetailPage({super.key, required this.pokemon});
  final PokemonEntity pokemon;

  @override
  Widget build(BuildContext context) {
    final urlParts = pokemon.url.split('/');
    final pokemonId = urlParts[urlParts.length - 2];
    GetIt.I.get<GetPokemonDescUseCase>().call(pokemonId);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 220, 10, 45),
      appBar: AppBar(
        title: Text(fixString(pokemon.name)),
        titleTextStyle: Theme.of(context)
            .textTheme
            .headlineLarge
            ?.copyWith(color: Colors.white),
        backgroundColor: Colors.transparent,
        forceMaterialTransparency: true,
        leading: IconButton(
          onPressed: context.pop,
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              fixIdString(pokemonId),
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.white),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width * .4,
                      left: 8,
                      right: 8,
                      bottom: 8,
                    ),
                    padding: EdgeInsets.only(
                      top: (MediaQuery.of(context).size.width * .1),
                      bottom: 16,
                      left: 16,
                      right: 16,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: FutureBuilder<Either<String, PokemonEntity>>(
                      future:
                          GetIt.I.get<GetPokemonUseCase>().call(pokemon.url),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return Center(child: CircularProgressIndicator());
                        }

                        return snapshot.data!.when(
                          left: (error) => Text(error),
                          right: (poke) {
                            final pokemonColor =
                                pokemonTypeToColor(poke.types.first);
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Wrap(
                                  spacing: 8,
                                  children: List.generate(
                                    poke.types.length,
                                    (index) => Chip(
                                      label: Text(
                                        fixString(poke.types[index].name),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(color: Colors.white),
                                      ),
                                      backgroundColor:
                                          pokemonTypeToColor(poke.types[index]),
                                    ),
                                  ),
                                ),
                                //SizedBox(height: 16),
                                Text(
                                  'About',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(color: pokemonColor),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text(
                                            '${poke.weight / 10} kg',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        color: Colors.grey,
                                        width: 1,
                                        height: 40),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text(
                                            '${poke.height / 10} m',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        color: Colors.grey,
                                        width: 1,
                                        height: 40),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          if (poke.abilities.length > 0)
                                            Text(
                                              fixString(poke.abilities[0].name),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium,
                                            ),
                                          if (poke.abilities.length > 1)
                                            Text(
                                              fixString(poke.abilities[1].name),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium,
                                            ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Weight',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      ),
                                    ),
                                    Container(
                                        color: Colors.grey,
                                        width: 1,
                                        height: 24),
                                    Expanded(
                                      child: Text(
                                        'Height',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      ),
                                    ),
                                    Container(
                                        color: Colors.grey,
                                        width: 1,
                                        height: 24),
                                    Expanded(
                                      child: Text(
                                        'Moves',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16),
                                FutureBuilder(
                                  future: GetIt.I
                                      .get<GetPokemonDescUseCase>()
                                      .call(pokemonId),
                                  builder: (context, snapshot) =>
                                      !snapshot.hasData
                                          ? Text('')
                                          : snapshot.data!.when(
                                              left: (failure) => Text(''),
                                              right: (desc) => Text(desc)),
                                ),
                                SizedBox(height: 16),
                                Text(
                                  'Base Stats',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(color: pokemonColor),
                                ),
                                SizedBox(height: 8),
                                ...poke.stats
                                    .map(
                                      (stat) => Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              pokemonStatToLabel(stat),
                                              textAlign: TextAlign.right,
                                            ),
                                          ),
                                          SizedBox(width: 8),
                                          Container(
                                              color: Colors.grey,
                                              width: 1,
                                              height: 32),
                                          SizedBox(width: 8),
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              '${stat.value}',
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 6,
                                            child: LayoutBuilder(
                                              builder: (context, constraints) =>
                                                  Row(
                                                children: [
                                                  Container(
                                                    color: pokemonColor,
                                                    width: stat.value *
                                                        constraints.maxWidth /
                                                        150,
                                                    height: 5,
                                                  ),
                                                  Container(
                                                    color: pokemonColor
                                                        .withOpacity(0.5),
                                                    width: (150 - stat.value) *
                                                        constraints.maxWidth /
                                                        150,
                                                    height: 5,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                    .toList(),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.network(
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/$pokemonId.png',
                    height: MediaQuery.of(context).size.width * .5,
                    width: MediaQuery.of(context).size.width * .5,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color pokemonTypeToColor(PokemonTypeEntity pokemonType) {
    debugPrint('pokemonType.name: ${pokemonType.name}');
    if (pokemonType.name == 'fire') return Colors.orange;
    if (pokemonType.name == 'grass') return Colors.green;
    if (pokemonType.name == 'poison') return Colors.purple;
    if (pokemonType.name == 'water') return Colors.blue;
    if (pokemonType.name == 'bug') return Colors.amber;
    if (pokemonType.name == 'flying') return Colors.lightBlueAccent;
    if (pokemonType.name == 'ground') return Colors.brown;

    return Colors.grey;
  }

  String pokemonStatToLabel(PokemonStatEntity pokemonStat) {
    debugPrint('pokemonStat.name: ${pokemonStat.name} ${pokemonStat.value}');
    if (pokemonStat.name == 'hp') return 'HP';
    if (pokemonStat.name == 'attack') return 'ATK';
    if (pokemonStat.name == 'defense') return 'DEF';
    if (pokemonStat.name == 'special-attack') return 'SATK';
    if (pokemonStat.name == 'special-defense') return 'SDEF';
    if (pokemonStat.name == 'speed') return 'SPD';
    return '';
  }

  String fixString(String string) {
    return '${string[0].toUpperCase()}${string.substring(1)}'
        .replaceAll('-', ' ');
  }

  String fixIdString(String id) {
    if (id.length == 1) return '#00$id';
    if (id.length == 2) return '#0$id';
    return '#$id';
  }
}
