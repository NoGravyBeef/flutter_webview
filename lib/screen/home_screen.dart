import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse(
    'https://velog.io/@lino0707/Flutter-%EC%9B%B9%EB%B7%B0-%EC%98%A4%EB%A5%98-%ED%95%B4%EA%B2%B0');

class HomeScreen extends StatelessWidget {
  /*
  android/setting.gradle 에서
  com.android.application 버전을 기본(8.0.1)에서 최신(8.2.2)로
  수정해야 실행할 수 있음.
  */
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(homeUrl);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('WebView Practice',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                controller.loadRequest(homeUrl);
              },
              icon: Icon(Icons.home))
        ],
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
