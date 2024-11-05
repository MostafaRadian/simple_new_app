import 'package:flutter/material.dart';
import 'package:news_app_2/provider/articals_provider.dart';
import 'package:news_app_2/widget/custom_articles.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<ArticalsProvider>(
        builder: (context, objectProvider, child) {
          var objectModel= objectProvider.articalsModel;
          if(objectModel==null){
            objectProvider.getArticalsProvider();
            return CircularProgressIndicator();
          }else {
            return ListView.builder(
              itemBuilder: (context, index) =>
                  CustomArticles(image: objectModel.articles[index]["urlToImage"],
                    title: objectModel.articles[index]["title"],
                    decription: objectModel.articles[index]["description"],),
              itemCount: objectModel.articles.length,
            );
          }
        }
      ),
    );
  }
}
