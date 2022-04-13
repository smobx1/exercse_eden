// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Book _$$_BookFromJson(Map<String, dynamic> json) => _$_Book(
      isbn: json['isbn'] as String?,
      title: json['title'] as String?,
      price: json['price'] as int?,
      cover: json['cover'] as String?,
      synopsis: (json['synopsis'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_BookToJson(_$_Book instance) => <String, dynamic>{
      'isbn': instance.isbn,
      'title': instance.title,
      'price': instance.price,
      'cover': instance.cover,
      'synopsis': instance.synopsis,
    };
