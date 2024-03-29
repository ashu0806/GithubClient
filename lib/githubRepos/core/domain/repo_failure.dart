import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo_failure.freezed.dart';

@freezed
class RepoFailure with _$RepoFailure {
  const RepoFailure._();
  const factory RepoFailure.api(int? errorCode) = _Server;
}
