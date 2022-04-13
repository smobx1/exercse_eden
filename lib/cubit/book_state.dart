part of 'book_cubit.dart';

class BookState extends Equatable {
  const BookState({
    this.isLoading = false,
    this.books = const [],
    this.isbns = const [],
  });

  final bool isLoading;
  final List<Book> books;
  final List<String> isbns;

  BookState copyWith({
    bool? isLoading,
    List<Book>? books,
    List<String>? isbns,
  }) =>
      BookState(
        isLoading: isLoading ?? this.isLoading,
        books: books ?? this.books,
        isbns: isbns ?? this.isbns,
      );

  @override
  List<Object?> get props => [
        isLoading,
        books,
        isbns,
      ];
}
