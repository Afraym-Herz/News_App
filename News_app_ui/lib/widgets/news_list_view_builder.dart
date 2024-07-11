import 'package:flutter/material.dart';
import 'package:news_app/services/News_services.dart';
import 'package:news_app/widgets/news_list_view.dart';

import '../models/article_model.dart';


class NewsListViewBuilder extends StatefulWidget {
   const NewsListViewBuilder({super.key, required this.category});
  final String category ;
   
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  
    Future<List<ArticleModel>>? future ;
   @override
  void initState() {  
    super.initState();
    future = NewsService().getTopHeadLines ( category : widget.category );
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>> (
      future: future ,
       builder: (context, snapshot) {
        if(snapshot.hasData) {
          return NewsListView(
            articles: snapshot.data! 
          );}
          else if ( snapshot.hasError) { return const SliverToBoxAdapter(child: Text("oops there was error"),);}
          else {return const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));} 
      }  
    );
  }
}
