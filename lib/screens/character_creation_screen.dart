import 'package:flutter/material.dart';
import '../models/class_data.dart';
import '../widgets/class_description_dialog.dart';
import 'status_creation_screen.dart';

class CharacterCreationScreen extends StatelessWidget {
  const CharacterCreationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Gemini_1.jpeg'), // 背景画像を設定
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: 300,
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 20.0,
              childAspectRatio: 1.0,
              children: List.generate(classData.length, (index) {
                return GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return ClassDescriptionDialog(
                          className: classData[index].name,
                          description: classData[index].description,
                          onConfirm: () {
                            Navigator.of(context).pop();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StatusCreationScreen(
                                  className: classData[index].name,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(
                          classData[index].imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          classData[index].name,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
