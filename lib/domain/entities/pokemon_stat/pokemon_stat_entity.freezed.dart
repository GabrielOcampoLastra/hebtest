// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_stat_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonStatEntity _$PokemonStatEntityFromJson(Map<String, dynamic> json) {
  return _PokemonStatEntity.fromJson(json);
}

/// @nodoc
mixin _$PokemonStatEntity {
  @JsonKey(
      name: 'stat',
      fromJson: PokemonStatEntity.nameFromJson,
      toJson: PokemonStatEntity.nameToJson)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_stat')
  int get value => throw _privateConstructorUsedError;

  /// Serializes this PokemonStatEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonStatEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonStatEntityCopyWith<PokemonStatEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStatEntityCopyWith<$Res> {
  factory $PokemonStatEntityCopyWith(
          PokemonStatEntity value, $Res Function(PokemonStatEntity) then) =
      _$PokemonStatEntityCopyWithImpl<$Res, PokemonStatEntity>;
  @useResult
  $Res call(
      {@JsonKey(
          name: 'stat',
          fromJson: PokemonStatEntity.nameFromJson,
          toJson: PokemonStatEntity.nameToJson)
      String name,
      @JsonKey(name: 'base_stat') int value});
}

/// @nodoc
class _$PokemonStatEntityCopyWithImpl<$Res, $Val extends PokemonStatEntity>
    implements $PokemonStatEntityCopyWith<$Res> {
  _$PokemonStatEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonStatEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonStatEntityImplCopyWith<$Res>
    implements $PokemonStatEntityCopyWith<$Res> {
  factory _$$PokemonStatEntityImplCopyWith(_$PokemonStatEntityImpl value,
          $Res Function(_$PokemonStatEntityImpl) then) =
      __$$PokemonStatEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: 'stat',
          fromJson: PokemonStatEntity.nameFromJson,
          toJson: PokemonStatEntity.nameToJson)
      String name,
      @JsonKey(name: 'base_stat') int value});
}

/// @nodoc
class __$$PokemonStatEntityImplCopyWithImpl<$Res>
    extends _$PokemonStatEntityCopyWithImpl<$Res, _$PokemonStatEntityImpl>
    implements _$$PokemonStatEntityImplCopyWith<$Res> {
  __$$PokemonStatEntityImplCopyWithImpl(_$PokemonStatEntityImpl _value,
      $Res Function(_$PokemonStatEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonStatEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$PokemonStatEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonStatEntityImpl implements _PokemonStatEntity {
  const _$PokemonStatEntityImpl(
      {@JsonKey(
          name: 'stat',
          fromJson: PokemonStatEntity.nameFromJson,
          toJson: PokemonStatEntity.nameToJson)
      this.name = '',
      @JsonKey(name: 'base_stat') this.value = 0});

  factory _$PokemonStatEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonStatEntityImplFromJson(json);

  @override
  @JsonKey(
      name: 'stat',
      fromJson: PokemonStatEntity.nameFromJson,
      toJson: PokemonStatEntity.nameToJson)
  final String name;
  @override
  @JsonKey(name: 'base_stat')
  final int value;

  @override
  String toString() {
    return 'PokemonStatEntity(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonStatEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  /// Create a copy of PokemonStatEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonStatEntityImplCopyWith<_$PokemonStatEntityImpl> get copyWith =>
      __$$PokemonStatEntityImplCopyWithImpl<_$PokemonStatEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonStatEntityImplToJson(
      this,
    );
  }
}

abstract class _PokemonStatEntity implements PokemonStatEntity {
  const factory _PokemonStatEntity(
      {@JsonKey(
          name: 'stat',
          fromJson: PokemonStatEntity.nameFromJson,
          toJson: PokemonStatEntity.nameToJson)
      final String name,
      @JsonKey(name: 'base_stat') final int value}) = _$PokemonStatEntityImpl;

  factory _PokemonStatEntity.fromJson(Map<String, dynamic> json) =
      _$PokemonStatEntityImpl.fromJson;

  @override
  @JsonKey(
      name: 'stat',
      fromJson: PokemonStatEntity.nameFromJson,
      toJson: PokemonStatEntity.nameToJson)
  String get name;
  @override
  @JsonKey(name: 'base_stat')
  int get value;

  /// Create a copy of PokemonStatEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonStatEntityImplCopyWith<_$PokemonStatEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
