import 'package:app/screens/skills/technology_stack.dart';
import 'package:app/screens/portfolio/app_item.dart';
import 'package:flutter/material.dart';

import 'info_item.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  void initState() {
    setState(() {});
    super.initState();
  }

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
              children: const [
                Expanded(child: InfoItem()),
                // Expanded(flex: 2, child: TechnologyStack()),
              ],
            ),
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
