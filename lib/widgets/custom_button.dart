import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Function onPressed;
  final double? sizeButton;

  const CustomButton({
    super.key,
    required this.text,
    this.icon,
    required this.onPressed,
    this.sizeButton = 45,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        backgroundColor: Theme.of(context).primaryColor,
        fixedSize: Size(double.infinity, sizeButton!),
        foregroundColor: Colors.white,
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
