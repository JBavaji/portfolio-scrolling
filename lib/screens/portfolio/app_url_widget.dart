import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/social_media/social_media_data.dart';

List<Widget> generateWidgetForUrl(Map<String, String> urls, Color color) {
  List<Widget> icons = [];

  urls.forEach((key, value) {
    IconData? icon;
    if (key == "web" && value.isNotEmpty) {
      icon = FontAwesomeIcons.internetExplorer;
    } else if (key == "store" && value.isNotEmpty) {
      icon = FontAwesomeIcons.googlePlay;
    } else if (key == "center" && value.isNotEmpty) {
      icon = FontAwesomeIcons.appStore;
    }

    if (icon != null) {
      icons.add(
        IconButton(
          icon: FaIcon(icon),
          color: color,
          onPressed: () {
            SocialMediaData.launchURL(value);
          },
        ),
      );
    }
  });

  return icons;
}

List<Widget> generateWidgetForPage(int total, int current, dynamic onClick) {
  List<Widget> dots = [];
  for (int i = 0; i < total; i++) {
    IconData data =
        current == i ? FontAwesomeIcons.solidCircle : FontAwesomeIcons.circle;
    double size = current == i ? 20 : 15;
    final dot = IconButton(
      icon: FaIcon(data),
      color: Colors.green,
      iconSize: size,
      onPressed: () {
        onClick(i);
      },
    );

    dots.add(dot);
  }

  return dots;
}
