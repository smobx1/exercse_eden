import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:exercise_mobile/model/book.dart';
import 'package:exercise_mobile/model/offer.dart';

part 'basket_state.dart';

class BasketCubit extends Cubit<BasketState> {
  final _dataService;

  List<String> x = [];
  List<Book> y = [];

  int price = 0;

  BasketCubit(this._dataService) : super(BasketState());

  void addToBasket(String isbn, Book book) async {
    x = List.from(x)..add(isbn);
    y = List.from(y)..add(book);

    price += book.price!;

    emit(state.copyWith(isbns: x, books: y, basketPrice: price));
  }

  void removeFromBasket(String isbn, Book book) async {
    x = List.from(x)..remove(isbn);
    y = List.from(y)..remove(book);

    price -= book.price!;

    emit(state.copyWith(isbns: x, books: y, basketPrice: price));
  }

  void calculateBestOffer() async {
    print(state.offers.toString());
    for (int i = 0; i < state.offers.length; i++) {
      print(state.offers[i]);
    }
    emit(state.copyWith(basketDiscountPrice: 50));
  }
}
