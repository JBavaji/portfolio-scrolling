import 'package:app/screens/widgets/page_navigator/page_navigation_data.dart';
import 'package:app/screens/widgets/page_navigator/page_navigator_button.dart';
import 'package:flutter/material.dart';

class PageNavigatorRowWidget extends StatelessWidget {
  const PageNavigatorRowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ...PageNavigationData.pageNavigatorList
            .map((page) => PageNavigatorButton(page: page))
            .toList(growable: false),
      ],
    );
  }
}
