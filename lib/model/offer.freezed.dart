// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'offer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Offer _$OfferFromJson(Map<String, dynamic> json) {
  return _Offer.fromJson(json);
}

/// @nodoc
class _$OfferTearOff {
  const _$OfferTearOff();

  _Offer call({String? type, int? value, int? sliceValue}) {
    return _Offer(
      type: type,
      value: value,
      sliceValue: sliceValue,
    );
  }

  Offer fromJson(Map<String, Object?> json) {
    return Offer.fromJson(json);
  }
}

/// @nodoc
const $Offer = _$OfferTearOff();

/// @nodoc
mixin _$Offer {
  String? get type => throw _privateConstructorUsedError;
  int? get value => throw _privateConstructorUsedError;
  int? get sliceValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferCopyWith<Offer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferCopyWith<$Res> {
  factory $OfferCopyWith(Offer value, $Res Function(Offer) then) =
      _$OfferCopyWithImpl<$Res>;
  $Res call({String? type, int? value, int? sliceValue});
}

/// @nodoc
class _$OfferCopyWithImpl<$Res> implements $OfferCopyWith<$Res> {
  _$OfferCopyWithImpl(this._value, this._then);

  final Offer _value;
  // ignore: unused_field
  final $Res Function(Offer) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? value = freezed,
    Object? sliceValue = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      sliceValue: sliceValue == freezed
          ? _value.sliceValue
          : sliceValue // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$OfferCopyWith<$Res> implements $OfferCopyWith<$Res> {
  factory _$OfferCopyWith(_Offer value, $Res Function(_Offer) then) =
      __$OfferCopyWithImpl<$Res>;
  @override
  $Res call({String? type, int? value, int? sliceValue});
}

/// @nodoc
class __$OfferCopyWithImpl<$Res> extends _$OfferCopyWithImpl<$Res>
    implements _$OfferCopyWith<$Res> {
  __$OfferCopyWithImpl(_Offer _value, $Res Function(_Offer) _then)
      : super(_value, (v) => _then(v as _Offer));

  @override
  _Offer get _value => super._value as _Offer;

  @override
  $Res call({
    Object? type = freezed,
    Object? value = freezed,
    Object? sliceValue = freezed,
  }) {
    return _then(_Offer(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      sliceValue: sliceValue == freezed
          ? _value.sliceValue
          : sliceValue // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Offer implements _Offer {
  const _$_Offer({this.type, this.value, this.sliceValue});

  factory _$_Offer.fromJson(Map<String, dynamic> json) =>
      _$$_OfferFromJson(json);

  @override
  final String? type;
  @override
  final int? value;
  @override
  final int? sliceValue;

  @override
  String toString() {
    return 'Offer(type: $type, value: $value, sliceValue: $sliceValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Offer &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.sliceValue, sliceValue) ||
                other.sliceValue == sliceValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, value, sliceValue);

  @JsonKey(ignore: true)
  @override
  _$OfferCopyWith<_Offer> get copyWith =>
      __$OfferCopyWithImpl<_Offer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferToJson(this);
  }
}

abstract class _Offer implements Offer {
  const factory _Offer({String? type, int? value, int? sliceValue}) = _$_Offer;

  factory _Offer.fromJson(Map<String, dynamic> json) = _$_Offer.fromJson;

  @override
  String? get type;
  @override
  int? get value;
  @override
  int? get sliceValue;
  @override
  @JsonKey(ignore: true)
  _$OfferCopyWith<_Offer> get copyWith => throw _privateConstructorUsedError;
}
