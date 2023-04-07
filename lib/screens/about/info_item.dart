import 'package:app/screens/about/personal_info.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoItem extends StatelessWidget {
  const InfoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Stack(
        alignment: AlignmentDirectional.topStart,
        fit: StackFit.loose,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.70,
            width: MediaQuery.of(context).size.width * 0.30,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
          const Positioned(
            top: 120,
            left: 20,
            child: PersonalInfo(),
          ),
          Positioned(
            child: Container(
              alignment: Alignment.center,
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.green.withOpacity(0.1),
              ),
              child: const FaIcon(
                FontAwesomeIcons.faceSmile,
                size: 70,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
