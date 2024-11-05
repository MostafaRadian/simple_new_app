import 'package:dio/dio.dart';
import 'package:news_app_2/model/artiicles_model.dart';

class ArticalsServices{
static Dio dio=Dio();

static Future<ArticalsModel> getArticles() async{
 Response response= await dio.get("https://newsapi.org/v2/top-headlines?sources="
     "techcrunch&apiKey=f099defd78a04eaf9e02e55e44f6e179");
 try{
   if (response.statusCode==200){
     print(response.data);
     return ArticalsModel.formJson(response.data);
   }else{
     throw Exception("Code not 200");
   }
 } catch(e){
   throw Exception("Error :$e");

 }
}
}