import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import 'character_creation_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/images/Gemini_1.jpeg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'クトゥルフRPG',
                  style: TextStyle(fontSize: 48, color: Colors.white),
                ),
                const SizedBox(height: 50),
                CustomButton(
                  text: 'ゲームスタート',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CharacterCreationScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
