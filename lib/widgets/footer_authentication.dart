import 'package:flutter/material.dart';

class FooterAuthentication extends StatelessWidget {
  final Function() onPressed;
  final String message;
  final String action;

  const FooterAuthentication({
    super.key,
    required this.onPressed,
    required this.message,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          const SizedBox(width: 5),
          GestureDetector(
            onTap: () {
              onPressed();
            },
            child: Text(
              action,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
