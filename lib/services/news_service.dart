import 'package:dio/dio.dart';

import '../model/news_model.dart';

class NewsService {
  static Dio dio = Dio();

  static Future<NewsModel> fetchData({required String category}) async {
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=a410b1724f84452c8df8a810efe34642");
    if (response.statusCode == 200) {
      return NewsModel.fromJson(response.data);
    } else {
      throw Exception("Failed to load data");
    }
  }
}
