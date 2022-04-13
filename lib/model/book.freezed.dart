// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
class _$BookTearOff {
  const _$BookTearOff();

  _Book call(
      {String? isbn,
      String? title,
      int? price,
      String? cover,
      List<String>? synopsis}) {
    return _Book(
      isbn: isbn,
      title: title,
      price: price,
      cover: cover,
      synopsis: synopsis,
    );
  }

  Book fromJson(Map<String, Object?> json) {
    return Book.fromJson(json);
  }
}

/// @nodoc
const $Book = _$BookTearOff();

/// @nodoc
mixin _$Book {
  String? get isbn => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  List<String>? get synopsis => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res>;
  $Res call(
      {String? isbn,
      String? title,
      int? price,
      String? cover,
      List<String>? synopsis});
}

/// @nodoc
class _$BookCopyWithImpl<$Res> implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  final Book _value;
  // ignore: unused_field
  final $Res Function(Book) _then;

  @override
  $Res call({
    Object? isbn = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? cover = freezed,
    Object? synopsis = freezed,
  }) {
    return _then(_value.copyWith(
      isbn: isbn == freezed
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      synopsis: synopsis == freezed
          ? _value.synopsis
          : synopsis // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$BookCopyWith(_Book value, $Res Function(_Book) then) =
      __$BookCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? isbn,
      String? title,
      int? price,
      String? cover,
      List<String>? synopsis});
}

/// @nodoc
class __$BookCopyWithImpl<$Res> extends _$BookCopyWithImpl<$Res>
    implements _$BookCopyWith<$Res> {
  __$BookCopyWithImpl(_Book _value, $Res Function(_Book) _then)
      : super(_value, (v) => _then(v as _Book));

  @override
  _Book get _value => super._value as _Book;

  @override
  $Res call({
    Object? isbn = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? cover = freezed,
    Object? synopsis = freezed,
  }) {
    return _then(_Book(
      isbn: isbn == freezed
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      synopsis: synopsis == freezed
          ? _value.synopsis
          : synopsis // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Book implements _Book {
  const _$_Book({this.isbn, this.title, this.price, this.cover, this.synopsis});

  factory _$_Book.fromJson(Map<String, dynamic> json) => _$$_BookFromJson(json);

  @override
  final String? isbn;
  @override
  final String? title;
  @override
  final int? price;
  @override
  final String? cover;
  @override
  final List<String>? synopsis;

  @override
  String toString() {
    return 'Book(isbn: $isbn, title: $title, price: $price, cover: $cover, synopsis: $synopsis)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Book &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            const DeepCollectionEquality().equals(other.synopsis, synopsis));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isbn, title, price, cover,
      const DeepCollectionEquality().hash(synopsis));

  @JsonKey(ignore: true)
  @override
  _$BookCopyWith<_Book> get copyWith =>
      __$BookCopyWithImpl<_Book>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookToJson(this);
  }
}

abstract class _Book implements Book {
  const factory _Book(
      {String? isbn,
      String? title,
      int? price,
      String? cover,
      List<String>? synopsis}) = _$_Book;

  factory _Book.fromJson(Map<String, dynamic> json) = _$_Book.fromJson;

  @override
  String? get isbn;
  @override
  String? get title;
  @override
  int? get price;
  @override
  String? get cover;
  @override
  List<String>? get synopsis;
  @override
  @JsonKey(ignore: true)
  _$BookCopyWith<_Book> get copyWith => throw _privateConstructorUsedError;
}
