import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_listView.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("News", style: TextStyle(color: Colors.black)),
            Text("Cloud", style: TextStyle(color: Colors.orange)),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: const Padding(
        padding:  EdgeInsets.all(20),
        child: CustomScrollView(
          physics : BouncingScrollPhysics(),
          slivers:  [
              SliverToBoxAdapter(child: CategoryListView()),
              SliverToBoxAdapter(child :SizedBox(height: 18,)) ,
              NewsListViewBuilder(category: "general"),
          ],
        )  
          
      ) 
        
    );
  }
}


