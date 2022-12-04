import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:news_api_app/view/home.dart';
import '../pages/articles_details_page.dart';

class ArticleView extends StatelessWidget {
  ArticleView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 3,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "News App",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.9),
                      spreadRadius: 5,
                      blurRadius: 2,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(20),
                child: Observer(builder: (_) {
                  return TextField(
                    controller: viewModel.textEditingController,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Search News',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                      suffixIcon: IconButton(
                        onPressed: () async {
                          await viewModel.getArticle();
                          viewModel.textEditingController.clear();
                        },
                        icon: Icon(Icons.search),
                        color: Colors.grey,
                      ),
                    ),
                    onChanged: (value) {
                      Timer(Duration(milliseconds: 1000), () {
                        viewModel.q = value;
                      });
                    },
                  );
                }),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                height: MediaQuery.of(context).size.height,
                child: Observer(builder: (_) {
                  return ListView.builder(
                    itemCount: viewModel.articles.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        contentPadding: EdgeInsets.all(18),
                        title: Text(viewModel.articles[index].publishedAt
                                .substring(0, 10) +
                            "\n" +
                            viewModel.articles[index].title),
                        subtitle: Text(
                          viewModel.articles[index].description,
                        ),
                        trailing: SizedBox(
                          height: 100,
                          width: 100,
                          child: Image.network(
                            viewModel.articles[index].urlToImage,
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
                  );
                }),
              ),
            ],
          ),
        ),
      );
    });
  }
}
