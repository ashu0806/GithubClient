// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_client/githubRepos/core/domain/github_repo.dart';

part 'userdto.freezed.dart';
part 'userdto.g.dart';

@freezed
class UserDTO with _$UserDTO {
  const UserDTO._();
  const factory UserDTO({
    @JsonKey(name: 'login') required String name,
    @JsonKey(name: 'avatar_url') required String avatarUrl,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  factory UserDTO.fromDomain(User instance) {
    return UserDTO(
      name: instance.name,
      avatarUrl: instance.avatarUrl,
    );
  }

  User toDomain() {
    return User(
      name: name,
      avatarUrl: avatarUrl,
    );
  }
}
