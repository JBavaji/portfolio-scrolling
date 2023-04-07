import 'package:app/screens/skills/technologies_data.dart';
import 'package:app/screens/skills/technology_item.dart';
import 'package:flutter/cupertino.dart';

class TechnologyLanguages extends StatelessWidget {
  final String technology;

  const TechnologyLanguages({Key? key, required this.technology})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = [];
    for (var element in languages) {
      if(element.keys.single == technology) {
        data = element.values.single;
      }
    }
    return Center(
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return TechnologyItem(item: data[index]);
        },
      ),
    );
  }
}
