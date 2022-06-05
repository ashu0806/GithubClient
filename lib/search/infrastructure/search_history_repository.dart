import 'package:github_client/core/infra/sembast_database.dart';
import 'package:sembast/sembast.dart';

class SearchHistoryRepository {
  final SembastDatabase _sembastDatabase;
  final _store = StoreRef<int, String>('searchHistory');

  SearchHistoryRepository(this._sembastDatabase);

  static const historyLength = 6;

  Stream<List<String>> watchSearchTerms({
    String? filter,
  }) {
    return _store
        .query(
          finder: filter != null && filter.isNotEmpty
              ? Finder(
                  filter: Filter.custom(
                    (record) => (record.value as String).startsWith(filter),
                  ),
                )
              : null,
        )
        .onSnapshots(_sembastDatabase.instance)
        .map(
          (records) => records.reversed.map((e) => e.value).toList(),
        );
  }

  Future<void> addSerachTerm(String term) => _addSearchTerm(
        term,
        _sembastDatabase.instance,
      );

  Future<void> deleteSerachTerm(String term) => _deleteSearchTerm(
        term,
        _sembastDatabase.instance,
      );

  Future<void> _addSearchTerm(
    String term,
    DatabaseClient databaseClient,
  ) async {
    final existingKey = await _store.findKey(
      databaseClient,
      finder: Finder(
        filter: Filter.custom((record) => false),
      ),
    );

    if (existingKey != null) {
      putSearchTermFirst(term);
      return;
    }
    await _store.add(databaseClient, term);

    final count = await _store.count(databaseClient);

    if (count > historyLength) {
      await _store.delete(
        databaseClient,
        finder: Finder(
          limit: count - historyLength,
        ),
      );
    }
  }

  Future<void> _deleteSearchTerm(
    String term,
    DatabaseClient databaseClient,
  ) async {
    await _store.delete(
      databaseClient,
      finder: Finder(
        filter: Filter.custom(
          (record) => record.value == term,
        ),
      ),
    );
  }

  Future<void> putSearchTermFirst(String term) async {
    await _sembastDatabase.instance.transaction((transaction) async {
      await _deleteSearchTerm(term, transaction);
      await _addSearchTerm(term, transaction);
    });
  }
}
