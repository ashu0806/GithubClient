import 'package:github_client/githubRepos/repos/core/application/paginated_repos_notifier.dart';
import 'package:github_client/githubRepos/repos/starred_repos_page/infra/starred_repos_repository.dart';

class StarredReposNotifier extends PaginatedReposNotifier {
  final StarredReposRepository _starredReposRepository;
  StarredReposNotifier(this._starredReposRepository);

  Future<void> getNextStarredReposPage() async {
    super.getNextPage(
      (page) => _starredReposRepository.getStarredRepos(page),
    );
  }
}
