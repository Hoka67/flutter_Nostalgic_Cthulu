import 'package:flutter/material.dart';

class StatusCreationScreen extends StatelessWidget {
  final String className;

  const StatusCreationScreen({super.key, required this.className});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$className ステータスクリエイト'),
      ),
      body: Center(
        child: Text('選択された職業: $className'),
      ),
    );
  }
}
