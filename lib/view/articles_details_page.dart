import 'package:devbu_case/components/myCard.dart';
import 'package:devbu_case/model/article_model.dart';
import 'package:devbu_case/view/home.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as Article;
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  viewModel.fav(article);
                },
                icon: const Icon(Icons.favorite))
          ],
        ),
        body: MyCardWidget(
          img: "${article.urlToImage}",
          publishedAt: "${article.publishedAt}",
          description: "${article.description}",
          title: "${article.title}",
          url: "${article.url}",
          isFavorite: article.isFavorite,
        ));
  }
}
