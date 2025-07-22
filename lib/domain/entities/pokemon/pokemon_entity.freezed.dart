// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonEntity _$PokemonEntityFromJson(Map<String, dynamic> json) {
  return _PokemonEntity.fromJson(json);
}

/// @nodoc
mixin _$PokemonEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  List<AbilityEntity> get abilities => throw _privateConstructorUsedError;
  List<PokemonTypeEntity> get types => throw _privateConstructorUsedError;
  List<PokemonStatEntity> get stats => throw _privateConstructorUsedError;

  /// Serializes this PokemonEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonEntityCopyWith<PokemonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonEntityCopyWith<$Res> {
  factory $PokemonEntityCopyWith(
          PokemonEntity value, $Res Function(PokemonEntity) then) =
      _$PokemonEntityCopyWithImpl<$Res, PokemonEntity>;
  @useResult
  $Res call(
      {int id,
      String name,
      String url,
      int weight,
      int height,
      List<AbilityEntity> abilities,
      List<PokemonTypeEntity> types,
      List<PokemonStatEntity> stats});
}

/// @nodoc
class _$PokemonEntityCopyWithImpl<$Res, $Val extends PokemonEntity>
    implements $PokemonEntityCopyWith<$Res> {
  _$PokemonEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? weight = null,
    Object? height = null,
    Object? abilities = null,
    Object? types = null,
    Object? stats = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AbilityEntity>,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeEntity>,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStatEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonEntityImplCopyWith<$Res>
    implements $PokemonEntityCopyWith<$Res> {
  factory _$$PokemonEntityImplCopyWith(
          _$PokemonEntityImpl value, $Res Function(_$PokemonEntityImpl) then) =
      __$$PokemonEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String url,
      int weight,
      int height,
      List<AbilityEntity> abilities,
      List<PokemonTypeEntity> types,
      List<PokemonStatEntity> stats});
}

/// @nodoc
class __$$PokemonEntityImplCopyWithImpl<$Res>
    extends _$PokemonEntityCopyWithImpl<$Res, _$PokemonEntityImpl>
    implements _$$PokemonEntityImplCopyWith<$Res> {
  __$$PokemonEntityImplCopyWithImpl(
      _$PokemonEntityImpl _value, $Res Function(_$PokemonEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? weight = null,
    Object? height = null,
    Object? abilities = null,
    Object? types = null,
    Object? stats = null,
  }) {
    return _then(_$PokemonEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AbilityEntity>,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeEntity>,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStatEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonEntityImpl implements _PokemonEntity {
  const _$PokemonEntityImpl(
      {this.id = 0,
      this.name = '',
      this.url = '',
      this.weight = 0,
      this.height = 0,
      final List<AbilityEntity> abilities = const [],
      final List<PokemonTypeEntity> types = const [],
      final List<PokemonStatEntity> stats = const []})
      : _abilities = abilities,
        _types = types,
        _stats = stats;

  factory _$PokemonEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonEntityImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final int weight;
  @override
  @JsonKey()
  final int height;
  final List<AbilityEntity> _abilities;
  @override
  @JsonKey()
  List<AbilityEntity> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  final List<PokemonTypeEntity> _types;
  @override
  @JsonKey()
  List<PokemonTypeEntity> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final List<PokemonStatEntity> _stats;
  @override
  @JsonKey()
  List<PokemonStatEntity> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  @override
  String toString() {
    return 'PokemonEntity(id: $id, name: $name, url: $url, weight: $weight, height: $height, abilities: $abilities, types: $types, stats: $stats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other._stats, _stats));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      url,
      weight,
      height,
      const DeepCollectionEquality().hash(_abilities),
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_stats));

  /// Create a copy of PokemonEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonEntityImplCopyWith<_$PokemonEntityImpl> get copyWith =>
      __$$PokemonEntityImplCopyWithImpl<_$PokemonEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonEntityImplToJson(
      this,
    );
  }
}

abstract class _PokemonEntity implements PokemonEntity {
  const factory _PokemonEntity(
      {final int id,
      final String name,
      final String url,
      final int weight,
      final int height,
      final List<AbilityEntity> abilities,
      final List<PokemonTypeEntity> types,
      final List<PokemonStatEntity> stats}) = _$PokemonEntityImpl;

  factory _PokemonEntity.fromJson(Map<String, dynamic> json) =
      _$PokemonEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get url;
  @override
  int get weight;
  @override
  int get height;
  @override
  List<AbilityEntity> get abilities;
  @override
  List<PokemonTypeEntity> get types;
  @override
  List<PokemonStatEntity> get stats;

  /// Create a copy of PokemonEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonEntityImplCopyWith<_$PokemonEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
