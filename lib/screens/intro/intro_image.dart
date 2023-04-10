import 'package:flutter/cupertino.dart';

import '../../app_config/assets_data.dart';

class IntroImage extends StatelessWidget {
  const IntroImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
      ),
      child: Image.asset(
        AppAssets.homeLandingImage,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.50,
        fit: BoxFit.fill,
      ),
    );
  }
}
