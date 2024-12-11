import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback onPressed;
  final Color? color;

  const CustomButton({
    super.key,
    required this.text,
    this.icon,
    required this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor:
            (color == null) ? Theme.of(context).primaryColor : color,
        fixedSize: const Size(double.infinity, 45),
      ),
      onPressed: () {
        onPressed();
      },
      child: Row(
        children: [
          Text(text),
          if (icon != null) Icon(icon),
        ],
      ),
    );
  }
}
