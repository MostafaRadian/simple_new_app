import 'package:dio/dio.dart';

import '../model/news_model.dart';

class NewsService {
  static Dio dio = Dio();

  static Future<NewsModel> fetchData() async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=39c5f0038d274b86ac6cbe948b7e1ccf");
      return NewsModel.fromJson(response.data);
    } catch (error) {
      throw "Error: $error";
    }
  }
}
