import 'package:app/screens/widgets/social_media/social_media_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaButton extends StatefulWidget {
  final String url;
  final IconData icon;

  const SocialMediaButton({
    Key? key,
    required this.url,
    required this.icon,
  }) : super(key: key);

  @override
  State<SocialMediaButton> createState() => _SocialMediaButtonState();
}

class _SocialMediaButtonState extends State<SocialMediaButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: IconButton(
        icon: FaIcon(widget.icon),
        color: Colors.green,
        onPressed: () {
          SocialMediaData.launchURL(widget.url);
        },
      ),
    );
  }
}
