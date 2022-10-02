import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'github_headers.freezed.dart';
part 'github_headers.g.dart';

@freezed
class GithubHeaders with _$GithubHeaders {
  const GithubHeaders._();
  const factory GithubHeaders({
    String? eTag,
    PaginationLink? link,
  }) = _GithubHeaders;

  factory GithubHeaders.parse(Response response) {
    final linked = response.headers.map['Link']?[0];
    return GithubHeaders(
      eTag: response.headers.map['ETag']?[0],
      link: linked == null
          ? null
          : PaginationLink.parse(
              linked.split(','),
              actualRequestUrl: response.requestOptions.uri.toString(),
            ),
    );
  }
  factory GithubHeaders.fromJson(Map<String, dynamic> json) =>
      _$GithubHeadersFromJson(json);
}

@freezed
class PaginationLink with _$PaginationLink {
  const PaginationLink._();
  const factory PaginationLink({
    required int lastPage,
  }) = _PaginationLink;

  factory PaginationLink.parse(
    List<String> values, {
    required String actualRequestUrl,
  }) {
    return PaginationLink(
      lastPage: _extractLastPage(
        values.firstWhere(
          (element) => element.contains('rel="last"'),
          orElse: () => actualRequestUrl,
        ),
      ),
    );
  }

  static int _extractLastPage(String secondUrl) {
    final url = RegExp(
      r'[(http(s)?):\/\/(www\.)?a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)',
    ).stringMatch(secondUrl);
    return int.parse(Uri.parse(url!).queryParameters['page']!);
  }

  factory PaginationLink.fromJson(Map<String, dynamic> json) =>
      _$PaginationLinkFromJson(json);
}
