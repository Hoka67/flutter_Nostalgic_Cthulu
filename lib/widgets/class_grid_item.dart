import 'package:flutter/material.dart';

class ClassGridItem extends StatelessWidget {
  final String className;
  final String description;
  final VoidCallback onTap;

  const ClassGridItem({
    super.key,
    required this.className,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        alignment: Alignment.center,
        child: Text(
          className,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
