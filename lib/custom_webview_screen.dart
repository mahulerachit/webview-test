import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class CustomWebViewScreen extends StatelessWidget {
  const CustomWebViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('WebView')),
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse(initialUrl)),
        onCloseWindow: (controller) {
          print('onCloseWindow called');
          Navigator.of(context).pop();
        },
      ),
    );
  }
}

const initialUrl = 'https://timeout-test.tiiny.site';
