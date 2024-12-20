import 'package:flutter/material.dart';

void showMessage({
  Color? color,
  required BuildContext context,
  required message,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      content: Center(child: Text(message)),
    ),
  );
}
