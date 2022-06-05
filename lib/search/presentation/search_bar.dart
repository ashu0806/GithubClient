import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_client/search/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class SearchBar extends StatefulHookConsumerWidget {
  final Widget body;
  final String title;
  final String hintText;
  final void Function(String searchTerm) onNavigatetoSearchPage;
  final void Function() onSignOutButtonPressed;
  const SearchBar({
    Key? key,
    required this.body,
    required this.title,
    required this.hintText,
    required this.onNavigatetoSearchPage,
    required this.onSignOutButtonPressed,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchBarState();
}

class _SearchBarState extends ConsumerState<SearchBar> {
  late FloatingSearchBarController _searchBarController;

  @override
  void initState() {
    super.initState();
    _searchBarController = FloatingSearchBarController();
    ref
        .read(searchHistoryRepositoryNotifierProvider.notifier)
        .watchSearchTerms();
  }

  @override
  void dispose() {
    _searchBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void pushPageAndPutSearchTermFirst(String term) {
      widget.onNavigatetoSearchPage(
        term,
      );
      ref
          .read(
            searchHistoryRepositoryNotifierProvider.notifier,
          )
          .putSearchTermFirst(term);

      _searchBarController.close();
    }

    void pushPageAndAddToHistory(String query) {
      ref
          .read(searchHistoryRepositoryNotifierProvider.notifier)
          .addSerachTerm(query);
      widget.onNavigatetoSearchPage(
        query,
      );
      _searchBarController.close();
    }

    return FloatingSearchBar(
      controller: _searchBarController,
      body: FloatingSearchBarScrollNotifier(
        child: widget.body,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontSize: 18.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'Tap to search 👍',
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
      hint: widget.hintText,
      actions: [
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
        FloatingSearchBarAction(
          child: IconButton(
            splashRadius: 18.r,
            onPressed: () {
              widget.onSignOutButtonPressed();
            },
            icon: const Icon(
              MdiIcons.logoutVariant,
            ),
          ),
        ),
      ],
      onQueryChanged: (query) {
        ref
            .read(searchHistoryRepositoryNotifierProvider.notifier)
            .watchSearchTerms(
              filter: query,
            );
      },
      onSubmitted: (query) {
        pushPageAndAddToHistory(query);
      },
      builder: (context, transition) {
        final searchHistoryState =
            ref.watch(searchHistoryRepositoryNotifierProvider);
        return Material(
          color: Theme.of(context).cardColor,
          elevation: 5.r,
          borderRadius: BorderRadius.circular(
            8.r,
          ),
          clipBehavior: Clip.hardEdge,
          child: searchHistoryState.map(
            data: (history) {
              if (_searchBarController.query.isEmpty && history.value.isEmpty) {
                return Container(
                  height: 50.h,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Text(
                    'Start searching your queries',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontSize: 13.sp,
                          color: Colors.grey,
                        ),
                  ),
                );
              } else if (history.value.isEmpty) {
                return ListTile(
                  leading: const Icon(
                    Icons.search,
                  ),
                  title: Text(
                    _searchBarController.query,
                  ),
                  onTap: () {
                    pushPageAndAddToHistory(_searchBarController.query);
                  },
                );
              }
              return Column(
                children: history.value
                    .map(
                      (term) => ListTile(
                        leading: const Icon(
                          Icons.history,
                        ),
                        title: Text(
                          term,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        onTap: () {
                          pushPageAndPutSearchTermFirst(term);
                        },
                        trailing: IconButton(
                          splashRadius: 20.r,
                          onPressed: () {
                            ref
                                .read(
                                  searchHistoryRepositoryNotifierProvider
                                      .notifier,
                                )
                                .deleteSerachTerm(term);
                          },
                          icon: const Icon(
                            Icons.clear,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              );
            },
            error: (_) => ListTile(
              title: Text(
                'Unexpected Error occurred ${_.error}',
              ),
            ),
            loading: (_) => const ListTile(
              title: LinearProgressIndicator(),
            ),
          ),
        );
      },
    );
  }
}
