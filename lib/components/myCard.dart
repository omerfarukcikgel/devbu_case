import 'package:flutter/material.dart';

import '../view/webview.dart';

class MyCardWidget extends StatefulWidget {
  String img;
  String publishedAt;
  String description;
  String title;
  String url;

  bool isFavorite;
  MyCardWidget({
    Key key,
    this.img,
    this.publishedAt,
    this.description,
    this.title,
    this.url,
    this.isFavorite,
  }) : super(key: key);

  @override
  State<MyCardWidget> createState() => _MyCardWidgetState();
}

class _MyCardWidgetState extends State<MyCardWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(16),
        child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Image.network(
                widget.img,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height / 4,
                alignment: Alignment.center,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.publishedAt,
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
                child: Text(
                  widget.title,
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    widget.description,
                  )),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WebViewNews(),
                        settings: RouteSettings(
                          arguments: widget.url,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "Haber Sitesine Git",
                  )),
            ])),
      ),
    );
  }
}
