import 'package:flutter/material.dart';
import '../models/character.dart';

class StatusCreationScreen extends StatefulWidget {
  final String className;

  const StatusCreationScreen({super.key, required this.className});

  @override
  StatusCreationScreenState createState() => StatusCreationScreenState();
}

class StatusCreationScreenState extends State<StatusCreationScreen> {
  late Character character;

  @override
  void initState() {
    super.initState();
    _rollStats();
  }

  void _rollStats() {
    setState(() {
      character = Character(
        name: widget.className,
        className: widget.className,
        imagePath: 'assets/images/${widget.className}.png',
      );
      character.rollStats();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.className} ステータスクリエイト'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Gemini_1.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              constraints: const BoxConstraints(maxWidth: 300),
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.className,
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  for (var stat
                      in character.classStatData[widget.className]!.keys)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Character.statNamesJp[stat]!,
                            style: const TextStyle(
                                fontSize: 16, color: Colors.white),
                          ),
                          Text(
                            '${character[stat]}',
                            style: const TextStyle(
                                fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    // 「ステータスを振り直す」ボタンのスタイルを削除
                    onPressed: _rollStats,
                    child: const Text('ステータスを振り直す'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // キャラクター作成を完了し、次の画面へ遷移する処理
                    },
                    child: const Text('キャラクター作成完了'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
