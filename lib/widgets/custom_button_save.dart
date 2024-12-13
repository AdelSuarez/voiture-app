import 'package:flutter/material.dart';

class CustomButtonSave extends StatelessWidget {
  final Function onPressed;
  const CustomButtonSave({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        onPressed: () {
          onPressed();
        },
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: Theme.of(context).primaryColor,
          fixedSize: const Size(double.infinity, 45),
          foregroundColor: Colors.white,
        ),
        child: const Center(
            child: Text(
          'Guardar',
          style: TextStyle(fontSize: 18),
        )),
      ),
    );
  }
}
