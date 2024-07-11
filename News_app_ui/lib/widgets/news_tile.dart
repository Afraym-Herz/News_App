import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.article});
  final ArticleModel article  ;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: (article.image==null) ? null :  Image.network(
                article.image!,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              )),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          article.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
         (article.subTitle==null) ? '' : article.subTitle! ,
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}