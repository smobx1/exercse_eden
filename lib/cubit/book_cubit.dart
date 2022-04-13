import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:exercise_mobile/model/book.dart';

part 'book_state.dart';

class BookCubit extends Cubit<BookState> {
  final _dataService;

  BookCubit(this._dataService) : super(BookState());

  void loadBooks() async {
    emit(state.copyWith(isLoading: true));

    final books = await _dataService.getBooks();

    emit(state.copyWith(books: books, isLoading: false));
  }
}
