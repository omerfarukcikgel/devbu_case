import 'package:devbu_case/view/articles_details_page.dart';
import 'package:devbu_case/view/home.dart';
import 'package:flutter/material.dart';

class FavoriteArticleView extends StatelessWidget {
  const FavoriteArticleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favorite",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 3,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: ListView.builder(
          itemCount: viewModel.favoriteArticles.length,
          itemBuilder: (context, index) {
            return ListTile(
              contentPadding: EdgeInsets.all(18),
              title: Text(viewModel.favoriteArticles[index].publishedAt
                      .substring(0, 10) +
                  "\n" +
                  viewModel.favoriteArticles[index].title),
              subtitle: Text(
                viewModel.favoriteArticles[index].description,
              ),
              trailing: SizedBox(
                height: 100,
                width: 100,
                child: Image.network(
                  viewModel.favoriteArticles[index].urlToImage,
                  fit: BoxFit.cover,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                    settings: RouteSettings(
                      arguments: viewModel.articles[index],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
