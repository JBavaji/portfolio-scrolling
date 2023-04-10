import 'package:flutter/material.dart';

import '../widgets/stroke_text_style.dart';

class StrokeLabelWidget extends StatelessWidget {
  const StrokeLabelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return const StrokeText(
              strokeText: 'Technology Stack',
              fillText: '10+ Years\n',
              strokeFontSize: 50,
              fontSize: 36,
              alignment: Alignment.bottomRight,
              color: Colors.black87,
            );
          } else {
            return const StrokeText(
              strokeText: 'Technology Stack',
              fillText: '10+ Years\n',
              strokeFontSize: 120,
              alignment: Alignment.bottomRight,
              color: Colors.black87,
            );
          }
        },
      ),
    );
  }
}
