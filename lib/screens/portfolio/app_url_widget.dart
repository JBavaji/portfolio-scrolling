import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/social_media/social_media_data.dart';

List<Widget> generateWidgetForUrl(Map<String, String> urls, Color color) {
  List<Widget> icons = [];

  urls.forEach((key, value) {
    IconData? icon;
    String? label;
    if (key == "web" && value.isNotEmpty) {
      icon = FontAwesomeIcons.internetExplorer;
      label = 'Go to Web site';
    } else if (key == "store" && value.isNotEmpty) {
      icon = FontAwesomeIcons.googlePlay;
      label = value.endsWith('.apk') ? 'Download APK' : 'Go to Play store';
    } else if (key == "center" && value.isNotEmpty) {
      icon = FontAwesomeIcons.appStore;
      label = 'Go to App store';
    }

    if (icon != null) {
      icons.add(
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: ElevatedButton.icon(
            icon: FaIcon(icon),
            onPressed: () {
              SocialMediaData.launchURL(value);
            },
            label: Text(label!),
          ),
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
