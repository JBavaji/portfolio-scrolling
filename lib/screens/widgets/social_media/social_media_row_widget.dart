import 'package:app/screens/widgets/social_media/social_media_button.dart';
import 'package:app/screens/widgets/social_media/social_media_data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaRowWidget extends StatelessWidget {
  const SocialMediaRowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SocialMediaButton(
          url: SocialMediaData.emailURL(),
          icon: FontAwesomeIcons.envelope,
        ),
        SocialMediaButton(
          url: SocialMediaData.gitHubURL,
          icon: FontAwesomeIcons.github,
        ),
        SocialMediaButton(
          url: SocialMediaData.linkedInURL,
          icon: FontAwesomeIcons.linkedin,
        ),
        defaultTargetPlatform == TargetPlatform.android ||
                defaultTargetPlatform == TargetPlatform.iOS
            ? SocialMediaButton(
                url: SocialMediaData.websiteURL,
                icon: FontAwesomeIcons.internetExplorer,
              )
            : const SizedBox(),
        defaultTargetPlatform == TargetPlatform.android
            ? const SizedBox()
            : SocialMediaButton(
                url: SocialMediaData.playStoreURL,
                icon: FontAwesomeIcons.googlePlay,
              ),
        // defaultTargetPlatform == TargetPlatform.iOS
        //     ? SizedBox()
        //     : SocialMediaButton(
        //         url: SocialMediaData.appCenterURL,
        //         icon: FontAwesomeIcons.appStore,
        //       ),
      ],
    );
  }
}
