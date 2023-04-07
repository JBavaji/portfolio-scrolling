import 'package:app/screens/about/technology_stack.dart';
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 100),
        Text(
          'About Me',
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                fontSize: 42,
                fontWeight: FontWeight.w700,
                color: Colors.grey.shade700,
              ),
        ),
        const SizedBox(height: 60),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Expanded(child: InfoItem()),
              Expanded(flex: 2, child: TechnologyStack()),
            ],
          ),
        ),
        const SizedBox(height: 100),
      ],
    );
  }
}
