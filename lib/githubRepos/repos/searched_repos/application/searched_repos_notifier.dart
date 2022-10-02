import 'package:github_client/githubRepos/repos/core/application/paginated_repos_notifier.dart';
import 'package:github_client/githubRepos/repos/searched_repos/infrastructure/searched_repos_repository.dart';

class SearchedReposNotifier extends PaginatedReposNotifier {
  final SearchedReposRepository _searchedReposRepository;
  SearchedReposNotifier(this._searchedReposRepository);

  Future<void> getNextSearchedReposPage(String queryParameter) async {
    super.getNextPage(
      (page) => _searchedReposRepository.getSearchedRepos(queryParameter, page),
    );
  }
}
