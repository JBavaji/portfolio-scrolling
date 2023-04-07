import 'package:app/screens/about/education_info.dart';
import 'package:app/screens/about/personal_info.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            // Instead of two different colors here I want to have the two other Linear gradients
            // with each having two other different colors that go from top to bottom
            Colors.green.withOpacity(0.15),
            Colors.transparent,
          ],
          stops: const [0.8, 0.2],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: const [
                PersonalInfo(),
                Expanded(child: EducationInfo()),
              ],
            ),
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
