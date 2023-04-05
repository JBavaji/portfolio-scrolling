import 'package:app/screens/contact/get_in_touch.dart';
import 'package:app/screens/contact/send_message.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        GetInTouch(),
        SendMessage(),
      ],
    );
  }
}
