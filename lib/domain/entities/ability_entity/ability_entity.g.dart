// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AbilityEntityImpl _$$AbilityEntityImplFromJson(Map<String, dynamic> json) =>
    _$AbilityEntityImpl(
      name: json['ability'] == null
          ? ''
          : AbilityEntity.nameFromJson(json['ability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AbilityEntityImplToJson(_$AbilityEntityImpl instance) =>
    <String, dynamic>{
      'ability': AbilityEntity.nameToJson(instance.name),
    };
