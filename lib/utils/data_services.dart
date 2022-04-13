import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:exercise_mobile/model/book.dart';
import 'package:exercise_mobile/model/offer.dart';
import 'package:http/http.dart' as http;

class DataServices {
  final _baseUrl = 'https://henri-potier.techx.fr';

  Future<List<Book>> getBooks() async {
    try {
      final uri = Uri.parse(_baseUrl + '/books');
      final response = await http.get(uri);
      final json = jsonDecode(response.body) as List;
      final books = json.map((postJson) => Book.fromJson(postJson)).toList();
      return books;
    } catch (e) {
      throw e;
    }
  }

  Future getOffers(List<String> isbn) async {
    final isbns = isbn.map((String b) => b).join(',');
    String _url = _baseUrl + '/books/$isbns/commercialOffers';

    Dio dio = new Dio();
    Response response = await dio.get(
      _url,
      options: Options(
        method: 'GET',
        contentType: 'application/x-www-form-urlencoded;charset=utf-8',
        responseType: ResponseType.json,
        headers: <String, String>{},
      ),
    );

    if (response.statusCode == 200) {
      List<Offer> offers = [];
      final List<dynamic> body = response.data['offers'];

      for (var data in body) {
        offers.add(Offer.fromJson(data));
      }

      return offers;
    }
  }
}
