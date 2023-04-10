import 'package:flutter/material.dart';

import 'app_url_widget.dart';

class DotsScroll extends StatelessWidget {
  final int total;
  final int current;
  final dynamic onClick;

  const DotsScroll({
    Key? key,
    required this.total,
    required this.current,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...generateWidgetForPage(
              total,
              current,
              onClick,
            ),
          ],
        ),
      ),
    );
  }
}
