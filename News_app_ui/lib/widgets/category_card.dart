import 'package:flutter/material.dart';
import 'package:news_app/models/category_models.dart';
import 'package:news_app/views/category_view.dart';
class CategoryCard extends StatelessWidget {
  const CategoryCard({ super.key ,  required this.model});
  final CategoryModel model ;
  
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) =>  CategoryView( categoryType: model.text ) )
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right:8.0),
        child: Container(
            height: 80,
            width: 180,
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.amberAccent,
              image: DecorationImage(
                image: AssetImage(model.image),
                fit: BoxFit.fill,
                
              ),
            ),
            child: Center(child: Text(model.text)),
          ),
      ),
    );
  }
}