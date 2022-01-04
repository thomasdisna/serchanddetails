import 'dart:convert';

import 'package:filter_listview_example/model/employemodel.dart';
import 'package:http/http.dart' as http;

class Api {
  static Future<List<employelistModel>> getBooks(String query) async {
    final url = Uri.parse(
        'http://www.mocky.io/v2/5d565297300000680030a986');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List books = json.decode(response.body);

      return books.map((json) => employelistModel.fromJson(json)).where((book) {
        final titleLower = book.name!.toLowerCase();
        final authorLower = book.email!.toLowerCase();
        final searchLower = query.toLowerCase();

        return titleLower.contains(searchLower) ||
            authorLower.contains(searchLower);
      }).toList();
    } else {
      throw Exception();
    }
  }
}
