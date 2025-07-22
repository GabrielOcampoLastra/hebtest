import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hebtest/domain/entities/pokemon/pokemon_entity.dart';

part 'pokemon_list_event.freezed.dart';

@freezed
sealed class PokemonListEvent with _$PokemonListEvent {
  factory PokemonListEvent.onCreated() = _OnCreated;
  factory PokemonListEvent.onScrolled() = _OnScrolled;
  factory PokemonListEvent.onPokemonTapped(PokemonEntity pokemon) =
      _OnPokemonTapped;
  factory PokemonListEvent.onPokemonSearchChanged(String text) =
      _OnPokemonSearchChanged;
}
