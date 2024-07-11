import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryType});
  final String categoryType ;
  
  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        body: CustomScrollView(
          slivers: [
            NewsListViewBuilder(category: categoryType),
            ]
          ),
      );
    
  }
}