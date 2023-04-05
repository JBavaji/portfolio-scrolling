import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final VoidCallback onLogoClick;

  const AppLogo({
    Key? key,
    required this.onLogoClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onLogoClick,
      child: Image.asset(
        'assets/images/app_logo.png',
        height: 100,
        width: 80,
      ),
    );
  }
}
