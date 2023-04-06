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
