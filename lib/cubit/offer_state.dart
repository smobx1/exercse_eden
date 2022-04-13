part of 'offer_cubit.dart';

class OfferState extends Equatable {
  const OfferState({
    this.isLoading = false,
    this.offers = const [],
    this.price = 0,
  });

  final bool isLoading;
  final List<Offer> offers;
  final int price;

  OfferState copyWith({
    bool? isLoading,
    List<Offer>? offers,
    int? price,
  }) =>
      OfferState(
        isLoading: isLoading ?? this.isLoading,
        offers: offers ?? this.offers,
        price: price ?? this.price,
      );

  @override
  List<Object?> get props => [
        isLoading,
        offers,
        price,
      ];
}
