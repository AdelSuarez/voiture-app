import 'package:flutter/material.dart';

class ButtonAuthentication extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const ButtonAuthentication({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
      ),
      onPressed: () {
        onPressed();
      },
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Text(text, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}
