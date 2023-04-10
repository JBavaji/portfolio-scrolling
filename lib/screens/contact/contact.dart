import 'package:app/screens/contact/get_in_touch.dart';
import 'package:app/screens/contact/send_message.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(height: 20),
              GetInTouch(),
              SizedBox(height: 40),
              SendMessage(),
              SizedBox(height: 20),
            ],
          );
        } else {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Expanded(child: GetInTouch()),
              Expanded(child: SendMessage()),
            ],
          );
        }
      },
    );
  }
}
