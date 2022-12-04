import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewNews extends StatefulWidget {
  WebViewNews({Key key}) : super(key: key);

  @override
  State<WebViewNews> createState() => _WebViewNewsState();
}

class _WebViewNewsState extends State<WebViewNews> {
  final Completer<WebViewController> controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    final url = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        body: WebView(
      initialUrl: url,
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (WebViewController webViewController) {
        setState(() {
          controller.complete(webViewController);
        });
      },
    ));
  }
}
