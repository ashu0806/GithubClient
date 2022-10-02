import 'package:github_client/search/infrastructure/search_history_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchHistoryNotifier extends StateNotifier<AsyncValue<List<String>>> {
  final SearchHistoryRepository _searchHistoryRepository;

  SearchHistoryNotifier(this._searchHistoryRepository)
      : super(
          const AsyncValue.loading(),
        );

  void watchSearchTerms({
    String? filter,
  }) {
    _searchHistoryRepository
        .watchSearchTerms(
      filter: filter,
    )
        .listen(
      (data) {
        state = AsyncValue.data(
          data,
        );
      },
      onError: (Object error) {
        state = AsyncValue.error(
          error,
        );
      },
    );
  }

  Future<void> addSerachTerm(String term) =>
      _searchHistoryRepository.addSerachTerm(term);

  Future<void> deleteSerachTerm(String term) =>
      _searchHistoryRepository.deleteSerachTerm(term);

  Future<void> putSearchTermFirst(String term) =>
      _searchHistoryRepository.putSearchTermFirst(term);
}
