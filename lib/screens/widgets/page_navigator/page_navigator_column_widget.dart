import 'package:app/screens/widgets/page_navigator/page_navigation_data.dart';
import 'package:app/screens/widgets/page_navigator/page_navigator_button.dart';
import 'package:flutter/material.dart';

class PageNavigatorColumnWidget extends StatelessWidget {
  final Function callback;

  const PageNavigatorColumnWidget({Key? key, required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        ...PageNavigationData.pageNavigatorList
            .map(
              (page) => PageNavigatorButton(
                page: page,
                callback: callback,
              ),
            )
            .toList(growable: false),
      ],
    );
  }
}
