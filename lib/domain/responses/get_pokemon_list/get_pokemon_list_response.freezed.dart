// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_pokemon_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetPokemonListResponse _$GetPokemonListResponseFromJson(
    Map<String, dynamic> json) {
  return _GetPokemonListResponse.fromJson(json);
}

/// @nodoc
mixin _$GetPokemonListResponse {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<PokemonEntity> get list => throw _privateConstructorUsedError;

  /// Serializes this GetPokemonListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetPokemonListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetPokemonListResponseCopyWith<GetPokemonListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPokemonListResponseCopyWith<$Res> {
  factory $GetPokemonListResponseCopyWith(GetPokemonListResponse value,
          $Res Function(GetPokemonListResponse) then) =
      _$GetPokemonListResponseCopyWithImpl<$Res, GetPokemonListResponse>;
  @useResult
  $Res call(
      {int count,
      String? next,
      String? previous,
      @JsonKey(name: 'results') List<PokemonEntity> list});
}

/// @nodoc
class _$GetPokemonListResponseCopyWithImpl<$Res,
        $Val extends GetPokemonListResponse>
    implements $GetPokemonListResponseCopyWith<$Res> {
  _$GetPokemonListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetPokemonListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<PokemonEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPokemonListResponseImplCopyWith<$Res>
    implements $GetPokemonListResponseCopyWith<$Res> {
  factory _$$GetPokemonListResponseImplCopyWith(
          _$GetPokemonListResponseImpl value,
          $Res Function(_$GetPokemonListResponseImpl) then) =
      __$$GetPokemonListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count,
      String? next,
      String? previous,
      @JsonKey(name: 'results') List<PokemonEntity> list});
}

/// @nodoc
class __$$GetPokemonListResponseImplCopyWithImpl<$Res>
    extends _$GetPokemonListResponseCopyWithImpl<$Res,
        _$GetPokemonListResponseImpl>
    implements _$$GetPokemonListResponseImplCopyWith<$Res> {
  __$$GetPokemonListResponseImplCopyWithImpl(
      _$GetPokemonListResponseImpl _value,
      $Res Function(_$GetPokemonListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetPokemonListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? list = null,
  }) {
    return _then(_$GetPokemonListResponseImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<PokemonEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPokemonListResponseImpl implements _GetPokemonListResponse {
  const _$GetPokemonListResponseImpl(
      {this.count = 0,
      this.next,
      this.previous,
      @JsonKey(name: 'results') final List<PokemonEntity> list = const []})
      : _list = list;

  factory _$GetPokemonListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPokemonListResponseImplFromJson(json);

  @override
  @JsonKey()
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<PokemonEntity> _list;
  @override
  @JsonKey(name: 'results')
  List<PokemonEntity> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'GetPokemonListResponse(count: $count, next: $next, previous: $previous, list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPokemonListResponseImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_list));

  /// Create a copy of GetPokemonListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPokemonListResponseImplCopyWith<_$GetPokemonListResponseImpl>
      get copyWith => __$$GetPokemonListResponseImplCopyWithImpl<
          _$GetPokemonListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPokemonListResponseImplToJson(
      this,
    );
  }
}

abstract class _GetPokemonListResponse implements GetPokemonListResponse {
  const factory _GetPokemonListResponse(
          {final int count,
          final String? next,
          final String? previous,
          @JsonKey(name: 'results') final List<PokemonEntity> list}) =
      _$GetPokemonListResponseImpl;

  factory _GetPokemonListResponse.fromJson(Map<String, dynamic> json) =
      _$GetPokemonListResponseImpl.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  @JsonKey(name: 'results')
  List<PokemonEntity> get list;

  /// Create a copy of GetPokemonListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPokemonListResponseImplCopyWith<_$GetPokemonListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
