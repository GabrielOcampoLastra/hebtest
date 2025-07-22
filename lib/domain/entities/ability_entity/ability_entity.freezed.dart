// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ability_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AbilityEntity _$AbilityEntityFromJson(Map<String, dynamic> json) {
  return _AbilityEntity.fromJson(json);
}

/// @nodoc
mixin _$AbilityEntity {
  @JsonKey(
      name: 'ability',
      fromJson: AbilityEntity.nameFromJson,
      toJson: AbilityEntity.nameToJson)
  String get name => throw _privateConstructorUsedError;

  /// Serializes this AbilityEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AbilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AbilityEntityCopyWith<AbilityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityEntityCopyWith<$Res> {
  factory $AbilityEntityCopyWith(
          AbilityEntity value, $Res Function(AbilityEntity) then) =
      _$AbilityEntityCopyWithImpl<$Res, AbilityEntity>;
  @useResult
  $Res call(
      {@JsonKey(
          name: 'ability',
          fromJson: AbilityEntity.nameFromJson,
          toJson: AbilityEntity.nameToJson)
      String name});
}

/// @nodoc
class _$AbilityEntityCopyWithImpl<$Res, $Val extends AbilityEntity>
    implements $AbilityEntityCopyWith<$Res> {
  _$AbilityEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AbilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AbilityEntityImplCopyWith<$Res>
    implements $AbilityEntityCopyWith<$Res> {
  factory _$$AbilityEntityImplCopyWith(
          _$AbilityEntityImpl value, $Res Function(_$AbilityEntityImpl) then) =
      __$$AbilityEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: 'ability',
          fromJson: AbilityEntity.nameFromJson,
          toJson: AbilityEntity.nameToJson)
      String name});
}

/// @nodoc
class __$$AbilityEntityImplCopyWithImpl<$Res>
    extends _$AbilityEntityCopyWithImpl<$Res, _$AbilityEntityImpl>
    implements _$$AbilityEntityImplCopyWith<$Res> {
  __$$AbilityEntityImplCopyWithImpl(
      _$AbilityEntityImpl _value, $Res Function(_$AbilityEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AbilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$AbilityEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AbilityEntityImpl implements _AbilityEntity {
  const _$AbilityEntityImpl(
      {@JsonKey(
          name: 'ability',
          fromJson: AbilityEntity.nameFromJson,
          toJson: AbilityEntity.nameToJson)
      this.name = ''});

  factory _$AbilityEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbilityEntityImplFromJson(json);

  @override
  @JsonKey(
      name: 'ability',
      fromJson: AbilityEntity.nameFromJson,
      toJson: AbilityEntity.nameToJson)
  final String name;

  @override
  String toString() {
    return 'AbilityEntity(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbilityEntityImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of AbilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AbilityEntityImplCopyWith<_$AbilityEntityImpl> get copyWith =>
      __$$AbilityEntityImplCopyWithImpl<_$AbilityEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbilityEntityImplToJson(
      this,
    );
  }
}

abstract class _AbilityEntity implements AbilityEntity {
  const factory _AbilityEntity(
      {@JsonKey(
          name: 'ability',
          fromJson: AbilityEntity.nameFromJson,
          toJson: AbilityEntity.nameToJson)
      final String name}) = _$AbilityEntityImpl;

  factory _AbilityEntity.fromJson(Map<String, dynamic> json) =
      _$AbilityEntityImpl.fromJson;

  @override
  @JsonKey(
      name: 'ability',
      fromJson: AbilityEntity.nameFromJson,
      toJson: AbilityEntity.nameToJson)
  String get name;

  /// Create a copy of AbilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AbilityEntityImplCopyWith<_$AbilityEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
