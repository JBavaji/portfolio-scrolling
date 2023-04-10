import 'package:app/screens/skills/stroke_label_widget.dart';
import 'package:app/screens/skills/technologies_data.dart';
import 'package:app/screens/skills/technology_language.dart';
import 'package:app/screens/widgets/stroke_text_style.dart';
import 'package:flutter/material.dart';

class TechnologyStack extends StatefulWidget {
  const TechnologyStack({Key? key}) : super(key: key);

  @override
  State<TechnologyStack> createState() => _TechnologyStackState();
}

class _TechnologyStackState extends State<TechnologyStack>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(
        length: technologies.length, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height * 0.80;
    double width = size.width;

    if (size.width < 600) {
      height = size.height * 0.65;
    }

    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const StrokeLabelWidget(),
          SizedBox(
            height: 35,
            child: TabBar(
              controller: _controller,
              // give the indicator a decoration (color and border radius)
              labelColor: Colors.green,
              labelStyle: Theme.of(context)
                  .textTheme
                  .displayMedium
                  ?.copyWith(fontWeight: FontWeight.w700),
              unselectedLabelColor: Colors.grey.shade700,
              unselectedLabelStyle: Theme.of(context).textTheme.displayMedium,
              isScrollable: true,
              tabs: [
                ...technologies.map((tech) {
                  return Tab(
                    text: tech.values.single,
                  );
                }).toList(growable: false),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: TabBarView(
              controller: _controller,
              children: [
                ...technologies.map((tech) {
                  return TechnologyLanguages(technology: tech.keys.single);
                }).toList(growable: false),
              ],
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
