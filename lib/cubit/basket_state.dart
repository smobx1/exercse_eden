part of 'basket_cubit.dart';

class BasketState extends Equatable {
  const BasketState({
    this.isLoading = false,
    this.offers = const [],
    this.isbns = const [],
    this.basketPrice = 0,
    this.basketDiscountPrice = 0,
    this.books = const [],
  });

  final bool isLoading;
  final List<Offer> offers;
  final List<Book> books;
  final List<String> isbns;
  final int basketPrice;
  final int basketDiscountPrice;

  BasketState copyWith({
    bool? isLoading,
    List<Offer>? offers,
    List<Book>? books,
    List<String>? isbns,
    int? basketPrice,
    int? basketDiscountPrice,
  }) =>
      BasketState(
        isLoading: isLoading ?? this.isLoading,
        offers: offers ?? this.offers,
        isbns: isbns ?? this.isbns,
        basketPrice: basketPrice ?? this.basketPrice,
        books: books ?? this.books,
        basketDiscountPrice: basketDiscountPrice ?? this.basketDiscountPrice,
      );

  @override
  List<Object?> get props => [
        isLoading,
        offers,
        isbns,
        basketPrice,
        books,
        basketDiscountPrice,
      ];
}
