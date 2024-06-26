import 'package:flutter/material.dart';
import '../models/class_data.dart';
import '../widgets/class_description_dialog.dart';
import 'status_creation_screen.dart';

class CharacterCreationScreen extends StatelessWidget {
  const CharacterCreationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    // グリッドアイテムのサイズを計算 (画面幅を3分割 - 余白、画面高さも考慮)
    final itemSize = ((screenSize.width - 30) / 3)
        .clamp(0, screenSize.height / 4)
        .toDouble();

    // 上段のクラスデータ
    final topClassData = classData.sublist(0, 3);
    // 下段のクラスデータ
    final bottomClassData = classData.sublist(3, 6);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(''),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '職業を選択してください',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: topClassData.map((classData) {
                  return _buildClassItem(context, classData, itemSize);
                }).toList(),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: bottomClassData.map((classData) {
                  return _buildClassItem(context, classData, itemSize);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildClassItem(
      BuildContext context, ClassData classData, double itemSize) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return ClassDescriptionDialog(
              className: classData.name,
              description: classData.description,
              onConfirm: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StatusCreationScreen(
                      className: classData.name,
                    ),
                  ),
                );
              },
            );
          },
        );
      },
      child: SizedBox(
        width: itemSize,
        height: itemSize,
        child: Stack(
          children: [
            Image.asset(
              classData.imagePath,
              fit: BoxFit.contain,
              width: itemSize,
              height: itemSize,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                classData.name,
                style: const TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
