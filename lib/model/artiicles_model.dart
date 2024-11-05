class ArticalsModel{
  List<dynamic> articles;

  String status;
  ArticalsModel({required this.articles, required this.status});
  
  factory ArticalsModel.formJson(Map<String,dynamic> json){
    return ArticalsModel(
        articles: json["articles"],
      status: json["status"],
    );
  }
}