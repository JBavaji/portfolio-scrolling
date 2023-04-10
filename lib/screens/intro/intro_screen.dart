import 'package:app/screens/intro/intro_image.dart';
import 'package:app/screens/intro/intro_section.dart';
import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const IntroSection();
        } else {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              IntroSection(),
              IntroImage(),
            ],
          );
        }
      },
    );
  }
}
