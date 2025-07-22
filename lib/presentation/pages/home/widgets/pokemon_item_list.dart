import 'package:flutter/material.dart';
import 'package:hebtest/domain/entities/pokemon/pokemon_entity.dart';

class PokemonItemList extends StatelessWidget {
  const PokemonItemList({
    super.key,
    required this.pokemon,
    required this.onTap,
  });
  final PokemonEntity? pokemon;
  final ValueChanged<PokemonEntity> onTap;

  @override
  Widget build(BuildContext context) {
    final urlParts = pokemon!.url.split('/');
    final pokemonId = urlParts[urlParts.length - 2];
    return LayoutBuilder(
      builder: (context, constraints) => InkWell(onTap: ()=> onTap(pokemon!), child: Container(
        margin: EdgeInsets.all(constraints.maxHeight * .025),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(constraints.maxHeight * .1),
          border: const Border.fromBorderSide(BorderSide(color: Colors.grey)),
          boxShadow: [
            BoxShadow(
                blurRadius: 1,
                offset: Offset(
                  constraints.maxHeight * .001,
                  constraints.maxHeight * .01,
                ),
                color: Colors.grey)
          ],
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: constraints.maxHeight * .5,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius:
                  BorderRadius.circular(constraints.maxHeight * .1),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.all(constraints.maxHeight * .05),
                child: Text(fixIdString(pokemonId)),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(constraints.maxHeight * .01),
                child: Text(fixString(pokemon?.name ?? 'Unknown')),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.network(
                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$pokemonId.png',
                height: constraints.maxHeight * .7,
                width: constraints.maxHeight * .7,
              ),
            ),
          ],
        ),
      ),),
    );
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
