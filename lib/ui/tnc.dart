import 'package:flutter/material.dart';

class TncDialog extends StatelessWidget {
  const TncDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        ElevatedButton(onPressed: () => Navigator.of(context).pop(true), child: const Text('Accept'))
      ],
      content: const Text('Terms and Conditions'),
    );
  }
}
