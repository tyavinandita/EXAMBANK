import 'dart:convert';
import 'package:figmaapp/dto/news.dart';
import 'package:figmaapp/endpoints/endpoints.dart';
import 'package:http/http.dart' as http;
// import 'package: FIGMAPP/dto/news.dart';
// import 'package: FIGMAPP';
// import 'package:my_app/endpoints/endpoint.dart';

class DataService {
  static Future<List<News>> fetchNews() async {
    final response = await http.get(Uri.parse(Endpoints.news));
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((item) => News.fromJson(item)).toList();
    } else {
      throw Exception('Failed to Load News!');
    }
  }

  static Future<void> sendNews(String title, String body) async {
    Map<String, String> newsData = {
      "title": title,
      "body": body,
    };
    String jsonData = jsonEncode(newsData);
    await http.post(Uri.parse(Endpoints.news),
        body: jsonData, headers: {'Content-Type': 'application/json'});
  }

  static Future<void> deleteData(String id) async {
    await http.delete(Uri.parse('${Endpoints.news}/$id'),
        headers: {'Content-type': 'application/json'});
  }

  static Future<void> updateData(String id, String title, String body) async {
    Map<String, String> data = {"id": id, "title": title, "body": body};
    String jsonData = jsonEncode(data);
    await http.put(Uri.parse('${Endpoints.news}/$id'),
        body: jsonData, headers: {'Content-type': 'application/json'});
  }
}
