// main.dart
import 'package:flutter/material.dart';
import 'screens/first_screen.dart'; // first_screen.dartをインポート

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'クトゥルフRPG', // アプリのタイトルはここに設定
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FirstScreen(), // FirstScreenを表示するように設定
    );
  }
}
