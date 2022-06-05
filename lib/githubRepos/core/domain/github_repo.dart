import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_repo.freezed.dart';

@freezed
class GithubRepo with _$GithubRepo {
  const GithubRepo._();
  const factory GithubRepo({
    required User ownerDetails,
    required String repoName,
    required String repoDesc,
    required int stargazerCounts,
  }) = _GithubRepo;

  String get repoFullName => '${ownerDetails.name}/$repoName';
}

@freezed
class User with _$User {
  const User._();
  const factory User({
    required String name,
    required String avatarUrl,
  }) = _User;

  String get avatarUrlSmall => '$avatarUrl&s=64';
}
