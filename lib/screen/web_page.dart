
import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class WebPage extends StatefulWidget {
  @override
  State<WebPage> createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  String url='http://www.gmghschool.edu.bd/';
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }
  @override
  void dispose() {
    
    super.dispose();

  }
    
  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
      child: WebView(
         initialUrl: url,
         javascriptMode: JavascriptMode.unrestricted,
         onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },

       ),
    );
  }
}
