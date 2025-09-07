import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const OmkarAdminApp());
}

class OmkarAdminApp extends StatelessWidget {
  const OmkarAdminApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Omkar Admin',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const AdminWebView(),
    );
  }
}

class AdminWebView extends StatefulWidget {
  const AdminWebView({super.key});

  @override
  State<AdminWebView> createState() => _AdminWebViewState();
}

class _AdminWebViewState extends State<AdminWebView> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://example.com/demo-admin"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Omkar Admin")),
      body: WebViewWidget(controller: _controller),
    );
  }
}
