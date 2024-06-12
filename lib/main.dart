import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'クトゥルフRPG',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FirstScreen(), // FirstScreen ウィジェットを表示
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold ウィジェットを追加
      body: Stack(
        children: <Widget>[
          // 背景画像
          Image.asset(
            'assets/Gemini_1.jpeg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // スタートボタン
          Center(
            child: ElevatedButton(
              child: const Text(
                'ゲームスタート',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                // ここにゲーム開始時の処理を追加
                // 例: Navigator.push(...) で次の画面へ遷移
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
