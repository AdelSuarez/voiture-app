import 'package:flutter/material.dart';
import 'package:manager_car/widgets/widgets.dart';

class OtherAuthentication extends StatelessWidget {
  final Size size;

  const OtherAuthentication({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _OtherAuthenticationTitle(size: size),
        SizedBox(height: size.height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButtonIcon(
                title: 'google', onPressed: () {}, icon: 'google_icon'),
            CustomButtonIcon(
                title: 'Github', onPressed: () {}, icon: 'github_icon'),
          ],
        ),
      ],
    );
  }
}

class _OtherAuthenticationTitle extends StatelessWidget {
  final Size size;

  const _OtherAuthenticationTitle({
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: size.width * 0.2,
          height: 2,
          color: Colors.grey,
        ),
        const Text(
          'O continuar con',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          width: size.width * 0.2,
          height: 2,
          color: Colors.grey,
        ),
      ],
    );
  }
}
