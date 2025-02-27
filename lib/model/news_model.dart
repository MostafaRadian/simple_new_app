class NewsModel {
  List<int> news;

  NewsModel({required this.news});

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(news: json["article"]);
  }
}
