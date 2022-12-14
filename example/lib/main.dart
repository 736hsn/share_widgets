import 'package:flutter/material.dart';
import 'package:share_screenshot_widget/share_screenshot_widget.dart';

// import package
///import package
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Share screenshot widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Share screenshot widget'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ShareWidgets sharing = ShareWidgets();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: sharing.containerScreenshot(
          child: const Text(
            'Share screenshot widget.',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          ShareWidgets sharing = ShareWidgets();

          sharing.shareWidgets();
        },
        child: const Icon(Icons.share),
      ),
    );
  }
}
