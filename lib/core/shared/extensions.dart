import 'dart:io';

import 'package:dio/dio.dart';
import 'package:github_client/githubRepos/core/domain/github_repo.dart';
import 'package:github_client/githubRepos/core/infra/repodto.dart';

extension DioInternetError on DioError {
  bool get noInternetConnection {
    return type == DioErrorType.other && error is SocketException;
  }
}

extension DTOListToEntity on List<RepoDTO> {
  List<GithubRepo> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}
