import 'package:flutter/material.dart';

import '../about/about_me.dart';
import '../contact/contact.dart';
import '../intro/intro_screen.dart';
import '../portfolio/portfolio.dart';
import '../skills/technology_stack.dart';
import '../widgets/footer/footer.dart';
import '../widgets/header/header.dart';

enum ScreenNavigation {
  header,
  intro,
  portfolio,
  technologyStack,
  aboutMe,
  contact,
  footer,
}

List<Widget> screens = [
  const Header(),
  const Intro(),
  const Portfolio(),
  const TechnologyStack(),
  const AboutMe(),
  const Contact(),
  const Footer(),
];
