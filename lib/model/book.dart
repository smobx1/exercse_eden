import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  const factory Book({
    String? isbn,
    String? title,
    int? price,
    String? cover,
    List<String>? synopsis,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
