import 'package:flutter/material.dart';

class ClassDescriptionDialog extends StatelessWidget {
  final String className;
  final String description;
  final VoidCallback onConfirm;

  const ClassDescriptionDialog({
    super.key,
    required this.className,
    required this.description,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(className),
      content: Text(description),
      actions: [
        TextButton(
          child: const Text('キャンセル'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text('選択'),
          onPressed: onConfirm,
        ),
      ],
    );
  }
}
