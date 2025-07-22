import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hebtest/domain/entities/pokemon/pokemon_entity.dart';

import 'package:hebtest/presentation/blocs/pokemon_list/pokemon_list_event/pokemon_list_event.dart';
import 'package:hebtest/presentation/blocs/pokemon_list/pokemon_list_state/pokemon_list_state.dart';

import '../../../domain/use_cases/get_pokemon_list_use_case.dart';

class PokemonListBloc extends Bloc<PokemonListEvent, PokemonListState> {
  PokemonListBloc()
      : super(PokemonListState(scrollController: ScrollController())) {
    on<PokemonListEvent>(
      (event, emit) => event.when(
        onCreated: () async {
          emit(
            state.copyWith(
              status: PokemonListStatus.loading,
              error: '',
            ),
          );
          final result = await GetIt.I.get<GetPokemonListUseCase>().call(null);
          result.when(
            left: (failure) => emit(
              state.copyWith(
                status: PokemonListStatus.error,
                error: failure,
              ),
            ),
            right: (response) => emit(
              state.copyWith(
                status: PokemonListStatus.loaded,
                list: response.list,
                nextPageUrl: response.next,
              ),
            ),
          );
        },
        onScrolled: () async {
          emit(
            state.copyWith(
              status: PokemonListStatus.loading,
              error: '',
            ),
          );
          final result = await GetIt.I.get<GetPokemonListUseCase>().call(state.nextPageUrl);
          result.when(
            left: (failure) => emit(
              state.copyWith(
                status: PokemonListStatus.error,
                error: failure,
              ),
            ),
            right: (response) {
              final newList = List<PokemonEntity>.from(state.list);
              newList.addAll(response.list);
              emit(
                state.copyWith(
                  status: PokemonListStatus.loaded,
                  list: newList,
                  nextPageUrl: response.next,
                ),
              );
            },
          );
        },
        onPokemonTapped: (pokemon) {},
        onPokemonSearchChanged: (text) {},
      ),
    );

    state.scrollController.addListener(() {
      if (state.scrollController.hasClients) {
        if (state.scrollController.position.maxScrollExtent ==
            state.scrollController.position.pixels) {
          if(state.status != PokemonListStatus.loading) {
            add(PokemonListEvent.onScrolled());
          }
        }
      }
    });
  }
}
