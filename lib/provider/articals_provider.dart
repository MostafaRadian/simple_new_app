import 'package:flutter/material.dart';
import 'package:news_app_2/model/artiicles_model.dart';

import '../services/articales_services.dart';

class ArticalsProvider extends ChangeNotifier {
 ArticalsModel? articalsModel;
 Future<void> getArticalsProvider() async {
  articalsModel=   await ArticalsServices.getArticles();
    notifyListeners();
  }
}
