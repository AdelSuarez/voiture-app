import 'package:flutter/material.dart';

class TitleAction extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final bool? isPadding;

  const TitleAction({
    super.key,
    required this.title,
    required this.onPressed,
    this.isPadding = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: (isPadding!) ? const EdgeInsets.symmetric(horizontal: 20) : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 14),
          ),
          IconButton(
            onPressed: () {
              onPressed();
            },
            icon: const Icon(Icons.add_circle_outline),
          ),
        ],
      ),
    );
  }
}
