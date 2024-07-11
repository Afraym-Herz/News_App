import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/models/category_models.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel (text : "Business" , image :"assets/business.avif"),
    CategoryModel (text : "Man" , image :"assets/business.avif"),
    CategoryModel (text : "Entertaiment" , image :"assets/entertaiment.avif"),
    CategoryModel (text : "Health" , image :"assets/health.avif"),
    CategoryModel (text : "Science" , image :"assets/science.avif"),
    CategoryModel (text : "sports" , image :"assets/sports.avif"),
    CategoryModel (text : "technology" , image :"assets/technology.jpeg"),
    CategoryModel (text : "general" , image :"assets/general.avif"),
  ] ;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height :80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length ,
        itemBuilder: (context, index) =>  CategoryCard(model: categories[index]), 
      ),
    );
  }
}