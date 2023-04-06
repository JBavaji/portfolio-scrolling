import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StrokeText extends StatelessWidget {
  final String strokeText;
  final String? fillText;
  final double? fontSize;

  const StrokeText({
    Key? key,
    required this.strokeText,
    this.fillText,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        // Stroked text as border.
        Text(
          strokeText,
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                fontSize: fontSize ?? 186,
                fontWeight: FontWeight.w700,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 0.5
                  ..color = Colors.green.shade700,
              ),
        ),
        // Solid text as fill.
        Text(
          strokeText,
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                fontSize: fontSize ?? 186,
                fontWeight: FontWeight.w700,
                color: Colors.transparent,
              ),
        ),
        fillText != null
            ? Text(
                fillText!,
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      fontSize: 86,
                      fontWeight: FontWeight.w700,
                      color: Colors.green.shade700,
                    ),
              )
            : const SizedBox(),
      ],
    );
  }
}
