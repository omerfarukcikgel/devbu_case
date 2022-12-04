import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_api_app/model/article_model.dart';
import 'package:news_api_app/view/article_view.dart';
import 'package:news_api_app/view/favorite_article.dart';
part 'article_viewmodel.g.dart';

class ArticleViewModel = _ArticleViewModelBase with _$ArticleViewModel;

abstract class _ArticleViewModelBase with Store {
  @observable
  List<Article> articles = ObservableList<Article>();

  @observable
  List<Article> favoriteArticles = ObservableList<Article>();

  @observable
  int selectedIndex = 0;

  @observable
  String q;

  @observable
  TextEditingController textEditingController;

  final endPointUrl = "newsapi.org";
  final apiKey = '5033ec4516e94d85957b009ddf291508';
  final client = http.Client();

  @action
  Future<List<Article>> getArticle() async {
    final queryParameters = {'q': q, 'apiKey': apiKey};

    final uri = Uri.https(endPointUrl, '/v2/everything', queryParameters);
    final response = await client.get(uri);
    Map<String, dynamic> json = jsonDecode(response.body);
    List<dynamic> body = json['articles'];
    articles = body.map((dynamic item) => Article.fromJson(item)).toList();
  }

  @observable
  List<int> selectedFavIndex = [];

  @action
  fav(Article article) {
    article.isFavorite = !article.isFavorite;
    if (article.isFavorite & !favoriteArticles.contains(article.title)) {
      favoriteArticles.add(article);
      print("favorlere eklendi.");
    } else {
      favoriteArticles.remove(article);
      print("favorlerden silindi.");
    }
  }

  List<Widget> page = <Widget>[ArticleView(), FavoriteArticleView()];

  @action
  void navBarOnTap(int index) {
    switch (index - 1) {
      case 0:
        selectedIndex = index;
        print(selectedIndex);
        break;
      case 1:
        selectedIndex = index;
        print(selectedIndex);
        break;
    }
  }
}
