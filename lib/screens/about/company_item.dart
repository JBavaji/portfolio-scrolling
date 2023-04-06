import 'package:flutter/material.dart';

class CompanyItem extends StatelessWidget {
  const CompanyItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Stack(
        alignment: AlignmentDirectional.topStart,
        fit: StackFit.loose,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 40),
            height: MediaQuery.of(context).size.height * 0.70,
            width: MediaQuery.of(context).size.width * 0.30,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
          // const Positioned(
          //   left: 50,
          //   child: CircleAvatar(
          //     radius: 50,
          //     backgroundImage: NetworkImage('https://picsum.photos/250?image=2'),
          //   ),
          // ),

          Positioned(
            left: 0,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.green.withOpacity(0.1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
