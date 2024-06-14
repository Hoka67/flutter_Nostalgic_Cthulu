// first_screen.dart
import 'package:flutter/material.dart';
import 'character_creation_screen.dart'; // character_creation_screen.dartをインポート

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/Gemini_1.jpeg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              // 縦方向に並べるためにColumnを使う
              mainAxisAlignment: MainAxisAlignment.center, // 中央寄せ
              children: <Widget>[
                const Text(
                  'クトゥルフRPG', // ゲームタイトル
                  style: TextStyle(fontSize: 48, color: Colors.white),
                ),
                const SizedBox(height: 50), // タイトルとボタンの間に隙間を作る
                ElevatedButton(
                  child: const Text(
                    'ゲームスタート',
                    style: TextStyle(fontSize: 24),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CharacterCreationScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
