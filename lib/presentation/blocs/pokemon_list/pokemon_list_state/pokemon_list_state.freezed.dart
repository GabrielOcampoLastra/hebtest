// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonListState {
  PokemonListStatus get status => throw _privateConstructorUsedError;
  String get searchText => throw _privateConstructorUsedError;
  List<PokemonEntity> get list => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  ScrollController get scrollController => throw _privateConstructorUsedError;
  String? get nextPageUrl => throw _privateConstructorUsedError;

  /// Create a copy of PokemonListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonListStateCopyWith<PokemonListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListStateCopyWith<$Res> {
  factory $PokemonListStateCopyWith(
          PokemonListState value, $Res Function(PokemonListState) then) =
      _$PokemonListStateCopyWithImpl<$Res, PokemonListState>;
  @useResult
  $Res call(
      {PokemonListStatus status,
      String searchText,
      List<PokemonEntity> list,
      String error,
      ScrollController scrollController,
      String? nextPageUrl});
}

/// @nodoc
class _$PokemonListStateCopyWithImpl<$Res, $Val extends PokemonListState>
    implements $PokemonListStateCopyWith<$Res> {
  _$PokemonListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? searchText = null,
    Object? list = null,
    Object? error = null,
    Object? scrollController = null,
    Object? nextPageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PokemonListStatus,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<PokemonEntity>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonListStateImplCopyWith<$Res>
    implements $PokemonListStateCopyWith<$Res> {
  factory _$$PokemonListStateImplCopyWith(_$PokemonListStateImpl value,
          $Res Function(_$PokemonListStateImpl) then) =
      __$$PokemonListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PokemonListStatus status,
      String searchText,
      List<PokemonEntity> list,
      String error,
      ScrollController scrollController,
      String? nextPageUrl});
}

/// @nodoc
class __$$PokemonListStateImplCopyWithImpl<$Res>
    extends _$PokemonListStateCopyWithImpl<$Res, _$PokemonListStateImpl>
    implements _$$PokemonListStateImplCopyWith<$Res> {
  __$$PokemonListStateImplCopyWithImpl(_$PokemonListStateImpl _value,
      $Res Function(_$PokemonListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? searchText = null,
    Object? list = null,
    Object? error = null,
    Object? scrollController = null,
    Object? nextPageUrl = freezed,
  }) {
    return _then(_$PokemonListStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PokemonListStatus,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<PokemonEntity>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PokemonListStateImpl implements _PokemonListState {
  const _$PokemonListStateImpl(
      {this.status = PokemonListStatus.initial,
      this.searchText = '',
      final List<PokemonEntity> list = const [],
      this.error = '',
      required this.scrollController,
      this.nextPageUrl})
      : _list = list;

  @override
  @JsonKey()
  final PokemonListStatus status;
  @override
  @JsonKey()
  final String searchText;
  final List<PokemonEntity> _list;
  @override
  @JsonKey()
  List<PokemonEntity> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey()
  final String error;
  @override
  final ScrollController scrollController;
  @override
  final String? nextPageUrl;

  @override
  String toString() {
    return 'PokemonListState(status: $status, searchText: $searchText, list: $list, error: $error, scrollController: $scrollController, nextPageUrl: $nextPageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonListStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.scrollController, scrollController) ||
                other.scrollController == scrollController) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      searchText,
      const DeepCollectionEquality().hash(_list),
      error,
      scrollController,
      nextPageUrl);

  /// Create a copy of PokemonListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonListStateImplCopyWith<_$PokemonListStateImpl> get copyWith =>
      __$$PokemonListStateImplCopyWithImpl<_$PokemonListStateImpl>(
          this, _$identity);
}

abstract class _PokemonListState implements PokemonListState {
  const factory _PokemonListState(
      {final PokemonListStatus status,
      final String searchText,
      final List<PokemonEntity> list,
      final String error,
      required final ScrollController scrollController,
      final String? nextPageUrl}) = _$PokemonListStateImpl;

  @override
  PokemonListStatus get status;
  @override
  String get searchText;
  @override
  List<PokemonEntity> get list;
  @override
  String get error;
  @override
  ScrollController get scrollController;
  @override
  String? get nextPageUrl;

  /// Create a copy of PokemonListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonListStateImplCopyWith<_$PokemonListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
