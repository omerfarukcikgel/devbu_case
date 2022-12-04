// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ArticleViewModel on _ArticleViewModelBase, Store {
  late final _$articlesAtom =
      Atom(name: '_ArticleViewModelBase.articles', context: context);

  @override
  List<Article> get articles {
    _$articlesAtom.reportRead();
    return super.articles;
  }

  @override
  set articles(List<Article> value) {
    _$articlesAtom.reportWrite(value, super.articles, () {
      super.articles = value;
    });
  }

  late final _$favoriteArticlesAtom =
      Atom(name: '_ArticleViewModelBase.favoriteArticles', context: context);

  @override
  List<Article> get favoriteArticles {
    _$favoriteArticlesAtom.reportRead();
    return super.favoriteArticles;
  }

  @override
  set favoriteArticles(List<Article> value) {
    _$favoriteArticlesAtom.reportWrite(value, super.favoriteArticles, () {
      super.favoriteArticles = value;
    });
  }

  late final _$selectedIndexAtom =
      Atom(name: '_ArticleViewModelBase.selectedIndex', context: context);

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  late final _$qAtom = Atom(name: '_ArticleViewModelBase.q', context: context);

  @override
  String get q {
    _$qAtom.reportRead();
    return super.q;
  }

  @override
  set q(String value) {
    _$qAtom.reportWrite(value, super.q, () {
      super.q = value;
    });
  }

  late final _$textEditingControllerAtom = Atom(
      name: '_ArticleViewModelBase.textEditingController', context: context);

  @override
  TextEditingController? get textEditingController {
    _$textEditingControllerAtom.reportRead();
    return super.textEditingController;
  }

  @override
  set textEditingController(TextEditingController? value) {
    _$textEditingControllerAtom.reportWrite(value, super.textEditingController,
        () {
      super.textEditingController = value;
    });
  }

  late final _$selectedFavIndexAtom =
      Atom(name: '_ArticleViewModelBase.selectedFavIndex', context: context);

  @override
  List<int> get selectedFavIndex {
    _$selectedFavIndexAtom.reportRead();
    return super.selectedFavIndex;
  }

  @override
  set selectedFavIndex(List<int> value) {
    _$selectedFavIndexAtom.reportWrite(value, super.selectedFavIndex, () {
      super.selectedFavIndex = value;
    });
  }

  late final _$getArticleAsyncAction =
      AsyncAction('_ArticleViewModelBase.getArticle', context: context);

  @override
  Future<List<Article>?> getArticle() {
    return _$getArticleAsyncAction.run(() => super.getArticle());
  }

  late final _$_ArticleViewModelBaseActionController =
      ActionController(name: '_ArticleViewModelBase', context: context);

  @override
  dynamic fav(Article article) {
    final _$actionInfo = _$_ArticleViewModelBaseActionController.startAction(
        name: '_ArticleViewModelBase.fav');
    try {
      return super.fav(article);
    } finally {
      _$_ArticleViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void navBarOnTap(int index) {
    final _$actionInfo = _$_ArticleViewModelBaseActionController.startAction(
        name: '_ArticleViewModelBase.navBarOnTap');
    try {
      return super.navBarOnTap(index);
    } finally {
      _$_ArticleViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
articles: ${articles},
favoriteArticles: ${favoriteArticles},
selectedIndex: ${selectedIndex},
q: ${q},
textEditingController: ${textEditingController},
selectedFavIndex: ${selectedFavIndex}
    ''';
  }
}
