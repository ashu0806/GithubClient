// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_client/githubRepos/core/domain/github_repo.dart';
import 'package:github_client/githubRepos/core/infra/userdto.dart';
part 'repodto.freezed.dart';
part 'repodto.g.dart';

String _descFromJson(Object? json) {
  return (json as String?) ?? '';
}

@freezed
class RepoDTO with _$RepoDTO {
  const RepoDTO._();
  const factory RepoDTO({
    @JsonKey(name: 'owner') required UserDTO ownerDetails,
    @JsonKey(name: 'name') required String repoName,
    @JsonKey(name: 'description', fromJson: _descFromJson)
        required String repoDesc,
    @JsonKey(name: 'stargazers_count') required int stargazerCounts,
  }) = _RepoDTO;

  factory RepoDTO.fromJson(Map<String, dynamic> json) =>
      _$RepoDTOFromJson(json);

  factory RepoDTO.fromDomain(GithubRepo instance) {
    return RepoDTO(
      ownerDetails: UserDTO.fromDomain(
        instance.ownerDetails,
      ),
      repoName: instance.repoName,
      repoDesc: instance.repoDesc,
      stargazerCounts: instance.stargazerCounts,
    );
  }

  GithubRepo toDomain() {
    return GithubRepo(
      ownerDetails: ownerDetails.toDomain(),
      repoName: repoName,
      repoDesc: repoDesc,
      stargazerCounts: stargazerCounts,
    );
  }
}
