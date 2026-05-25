import 'dart:convert';

import 'package:news_app/news_model.dart';
import 'package:http/http.dart' as http;

class NewsService {
  static const String _apiKey = '1a83d7a6540c48dca25156b373bb7bc7';
  static const String _baseUrl = 'https://newsapi.org/v2';

  Future<List<NewsModel>> fetchSources() async {
    // Endpoint sources: https://newsapi.org/v2/sources
    final uri = Uri.parse(
      '$_baseUrl/sources'
      '?apiKey=$_apiKey',
    );

    final response = await http.get(
      uri,
      headers: {
        'Accept': 'application/json',
      },
    ).timeout(
      const Duration(seconds: 10),
      onTimeout: () => throw Exception(
        'Request timeout. Please Check Your Connection!.',
      ),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);

      // Response sources using key "sources",
      if (data['status'] == 'ok') {
        final List<dynamic> sourcesJson = data['sources'];

        return sourcesJson
            .map((json) => NewsModel.fromJson(json))
            .where((source) => source.name != '[Removed]')
            .toList();
      } else {
        throw Exception('NewsAPI error: ${data['message']}');
      }
    } else if (response.statusCode == 401) {
      throw Exception(
        'API Key tidak valid. Periksa kembali _apiKey di news_service.dart',
      );
    } else if (response.statusCode == 429) {
      throw Exception('Rate exceed limit. Please try again later!.');
    } else {
      throw Exception('Failed load sources. Status: ${response.statusCode}');
    }
  }
}
