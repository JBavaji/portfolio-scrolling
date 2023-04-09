import 'package:flutter/material.dart';

class DesignationItem extends StatelessWidget {
  final String title;
  final String start;
  final String end;

  const DesignationItem({
    Key? key,
    required this.title,
    required this.start,
    required this.end,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const SizedBox(height: 5),
        Text(
          '$end - $start',
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ],
    );
  }
}
