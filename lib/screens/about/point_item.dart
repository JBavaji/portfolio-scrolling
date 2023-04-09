import 'package:flutter/material.dart';

class PointItem extends StatelessWidget {
  final String point;

  const PointItem({Key? key, required this.point}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Text(
        point,
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.displaySmall,
      ),
    );
  }
}
