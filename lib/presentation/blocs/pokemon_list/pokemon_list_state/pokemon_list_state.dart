import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hebtest/domain/entities/pokemon/pokemon_entity.dart';

part 'pokemon_list_state.freezed.dart';

enum PokemonListStatus { initial, loading, loaded, error }

@freezed
class PokemonListState with _$PokemonListState {
  const factory PokemonListState({
    @Default(PokemonListStatus.initial) PokemonListStatus status,
    @Default('') String searchText,
    @Default([]) List<PokemonEntity> list,
    @Default('') String error,
    required ScrollController scrollController,
    String? nextPageUrl,
  }) = _PokemonListState;
}

extension PokemonListStateX on PokemonListState {
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<PokemonEntity> list) loading,
    required TResult Function(List<PokemonEntity> list) loaded,
    required TResult Function(String text) error,
  }) {
    if (status == PokemonListStatus.initial) return initial();
    if (status == PokemonListStatus.loading) return loading(list);
    if (status == PokemonListStatus.loaded) return loaded(list);
    if (status == PokemonListStatus.error) return error(this.error);
    throw UnimplementedError();
  }

  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<PokemonEntity> list)? loading,
    TResult? Function(List<PokemonEntity> list)? loaded,
    TResult? Function(String text)? error,
  }) {
    if (status == PokemonListStatus.initial && initial != null) {
      return initial();
    }
    if (status == PokemonListStatus.loading && loading != null) {
      return loading(list);
    }
    if (status == PokemonListStatus.loaded && loaded != null) {
      return loaded(list);
    }
    if (status == PokemonListStatus.error && error != null) {
      return error(this.error);
    }
    return null;
  }

  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PokemonEntity> list)? loading,
    TResult Function(List<PokemonEntity> list)? loaded,
    TResult Function(String text)? error,
    required TResult Function() orElse,
  }) {
    if (status == PokemonListStatus.initial && initial != null) {
      return initial();
    }
    if (status == PokemonListStatus.loading && loading != null) {
      return loading(list);
    }
    if (status == PokemonListStatus.loaded && loaded != null) {
      return loaded(list);
    }
    if (status == PokemonListStatus.error && error != null) {
      return error(this.error);
    }
    return orElse();
  }
}
