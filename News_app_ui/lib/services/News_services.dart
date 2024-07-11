import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio = Dio();

  Future<List<ArticleModel>> getTopHeadLines({required String category}) async {
    try {
  Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=780a4513e5e2461889a70883dd7e1417&category=$category');
  
  Map<String, dynamic> jsonDate = response.data;
  List<dynamic> articles = jsonDate["articles"];
  
  List<ArticleModel> articleList =  [];
  for (var article in articles) {
    ArticleModel a = ArticleModel.fromJson(article) ;
  
      articleList.add(a);
  }
  return articleList;
}  catch (e) {
 return [] ;
}
  }
}
