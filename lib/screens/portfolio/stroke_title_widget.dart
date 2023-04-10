import 'package:flutter/material.dart';

import '../widgets/stroke_text_style.dart';

class StrokeTitleWidget extends StatelessWidget {
  const StrokeTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const StrokeText(
            strokeText: 'Portfolio',
            fillText: 'Development',
            strokeFontSize: 106,
            fontSize: 46,
          );
        } else {
          return const StrokeText(
            strokeText: 'Portfolio',
            fillText: 'Development',
          );
        }
      },
    );
  }
}
