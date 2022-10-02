// ignore_for_file: depend_on_referenced_packages

import 'package:collection/collection.dart';
import 'package:github_client/core/infra/sembast_database.dart';
import 'package:github_client/githubRepos/core/infra/pagination_config.dart';
import 'package:github_client/githubRepos/core/infra/repodto.dart';
import 'package:sembast/sembast.dart';

class ReposLocalService {
  final SembastDatabase _sembastDatabase;
  final _store = intMapStoreFactory.store('starredRepos');

  ReposLocalService(this._sembastDatabase);

  Future<void> upsertRepos(
    List<RepoDTO> repos,
    int pageNumber,
  ) async {
    final sembastPage = pageNumber - 1;
    _store
        .records(
          repos.mapIndexed(
            (index, _) => index + PaginationConfig.reposPerPage * sembastPage,
          ),
        )
        .put(
          _sembastDatabase.instance,
          repos.map((e) => e.toJson()).toList(),
        );
  }

  Future<List<RepoDTO>> getRepoPage(
    int page,
  ) async {
    final sembastPage = page - 1;

    final records = await _store.find(
      _sembastDatabase.instance,
      finder: Finder(
        offset: PaginationConfig.reposPerPage * sembastPage,
        limit: PaginationConfig.reposPerPage,
      ),
    );
    return records.map((e) => RepoDTO.fromJson(e.value)).toList();
  }

  Future<int> getLocalPageCount() async {
    final repoCount = await _store.count(_sembastDatabase.instance);
    return (repoCount / PaginationConfig.reposPerPage).ceil();
  }
}
