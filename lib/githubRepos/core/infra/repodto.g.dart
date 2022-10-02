// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repodto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RepoDTO _$$_RepoDTOFromJson(Map<String, dynamic> json) => _$_RepoDTO(
      ownerDetails: UserDTO.fromJson(json['owner'] as Map<String, dynamic>),
      repoName: json['name'] as String,
      repoDesc: _descFromJson(json['description']),
      stargazerCounts: json['stargazers_count'] as int,
    );

Map<String, dynamic> _$$_RepoDTOToJson(_$_RepoDTO instance) =>
    <String, dynamic>{
      'owner': instance.ownerDetails.toJson(),
      'name': instance.repoName,
      'description': instance.repoDesc,
      'stargazers_count': instance.stargazerCounts,
    };
