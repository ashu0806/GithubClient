import 'package:freezed_annotation/freezed_annotation.dart';

part 'fresh.freezed.dart';

@freezed
class FreshClass<T> with _$FreshClass<T> {
  const FreshClass._();
  const factory FreshClass({
    required bool isFresh,
    required T entity,
    bool? isNextPagePresent,
  }) = _FreshClass<T>;

  factory FreshClass.yes(
    T entity, {
    bool? isNextPagePresent,
  }) =>
      FreshClass(
        isFresh: true,
        entity: entity,
        isNextPagePresent: isNextPagePresent,
      );
  factory FreshClass.no(
    T entity, {
    bool? isNextPagePresent,
  }) =>
      FreshClass(
        isFresh: false,
        entity: entity,
        isNextPagePresent: isNextPagePresent,
      );
}
