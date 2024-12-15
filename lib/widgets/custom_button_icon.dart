import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButtonIcon extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final String icon;

  const CustomButtonIcon({
    super.key,
    required this.title,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
      ),
      onPressed: () {
        onPressed();
      },
      child: Row(
        children: [
          SvgPicture.asset('assets/$icon.svg', width: 20),
          const SizedBox(width: 10),
          Text(title, style: const TextStyle(color: Colors.black)),
        ],
      ),
    );
  }
}
