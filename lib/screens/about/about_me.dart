import 'package:app/screens/about/toggle_info.dart';
import 'package:app/screens/about/years_info.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.green.withOpacity(0.15),
            Colors.transparent,
          ],
          stops: const [0.8, 0.2],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
        child: MediaQuery.of(context).size.width < 600
            ? Column(
                children: const [
                  ToggleInfo(),
                  SizedBox(height: 20),
                  YearsInfo(),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Expanded(child: ToggleInfo()),
                  SizedBox(width: 30),
                  Expanded(flex: 2, child: YearsInfo()),
                ],
              ),
      ),
    );
  }
}
