import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer.freezed.dart';
part 'offer.g.dart';

@freezed
class Offer with _$Offer {
  const factory Offer({
    String? type,
    int? value,
    int? sliceValue,
  }) = _Offer;

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);
}
