import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:exercise_mobile/model/offer.dart';

part 'offer_state.dart';

class OfferCubit extends Cubit<OfferState> {
  final _dataService;

  OfferCubit(this._dataService) : super(OfferState());

  void loadOffers(List<String>? isbns, int standardPrice) async {
    emit(state.copyWith(isLoading: true));

    final offers = await _dataService.getOffers(isbns);

    calculateBestPrice(standardPrice, offers);

    emit(state.copyWith(offers: offers, isLoading: false));
  }

  void calculateBestPrice(int price, List<Offer> offers) {
    int discount_percentage = offers[0].value!;
    int discount_minus = offers[1].value!;
    int discount_slice = offers[2].sliceValue!;

    var difference_minus = price - discount_minus;
    var difference_percentage = price - (discount_percentage / 100 * price);
    var difference_slice = (price / 100) * discount_slice;

    List<dynamic> tempList = [
      difference_percentage,
      difference_minus,
      discount_slice
    ];

    final yMax = tempList.cast<num>().reduce(min);
    int newPrice = yMax.toInt();

    emit(state.copyWith(price: newPrice));
  }
}
