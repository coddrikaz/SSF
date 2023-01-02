import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

class WebViewStack extends StatefulWidget {
  final String? url;

  const WebViewStack(this.url, {Key? key}) : super(key: key);

  @override
  State<WebViewStack> createState() => _WebViewStackState();
}

class _WebViewStackState extends State<WebViewStack> {
  var loadingPercentage = 0;
  late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebView(
          initialUrl: widget.url,
          gestureNavigationEnabled: true,
          debuggingEnabled: true,
          zoomEnabled: false,
          onWebViewCreated: (webViewController) {
            controller = webViewController;
          },
          onPageStarted: (url) {
            setState(() {
              loadingPercentage = 0;
            });
          },
          onProgress: (progress) {
            setState(() {
              loadingPercentage = progress;
            });
          },
          onPageFinished: (url) {
            setState(() {
              //for hiding some part of main website
              controller.runJavascript(
                  "document.getElementsByClassName('header_logo')[0].style.display='none';");
              controller.runJavascript(
                  "document.getElementsByClassName('innerHeading')[0].style.display='none';");
              controller.runJavascript(
                  "document.getElementsByClassName('topbar-wrap')[0].style.display='none';");
              controller.runJavascript(
                  "document.getElementsByClassName('header-wrap wow fadeInUp')[0].style.display='none';");
              controller.runJavascript(
                  "document.getElementsByClassName('bradcumb-section')[0].style.display='none';");
              controller.runJavascript(
                  "document.getElementsByClassName('col-lg-12 pt-4')[0].style.display='none';");
              controller.runJavascript(
                  "document.getElementsByClassName('col-lg-4 news-updates-side-bar order-lg-1')[0].style.display='none';");
              controller.runJavascript(
                  "document.getElementsByClassName('partners-wrap pt-4 pb-4')[0].style.display='none';");
              controller.runJavascript(
                  "document.getElementsByClassName('newsletter-wrap wow fadeInUp')[0].style.display='none';");
              controller.runJavascript(
                  "document.getElementsByClassName('tags')[0].style.display='none';");
              controller.runJavascript(
                  "document.getElementsByClassName('navbar-toggler')[0].style.display='none';");
              controller.runJavascript(
                  "document.getElementsByClassName('copyright')[0].style.display='none';");
              loadingPercentage = 100;
            });
          },
          javascriptMode: JavascriptMode.unrestricted,
        ),
        if (loadingPercentage < 100)
          Column(
            children: [
              LinearProgressIndicator(
                value: loadingPercentage / 100.0,
                color: Colors.red,
              ),
            ],
          ),
      ],
    );
  }
}
