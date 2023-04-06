import 'package:app/screens/portfolio/app_item.dart';
import 'package:app/screens/portfolio/model/project_info_model.dart';
import 'package:app/screens/widgets/stroke_text_style.dart';
import 'package:flutter/material.dart';

import 'model/projects_info_list_data.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<ProjectInfoModel> itemData = [];

  @override
  void initState() {
    setState(() {
      itemData = projectInfoList;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const StrokeText(
          strokeText: 'Portfolio',
          fillText: 'Development',
          fontSize: 186,
        ),
        // AppItem(),

        SizedBox(
          height: MediaQuery.of(context).size.height * 0.60,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: itemData.length,
            itemBuilder: (context, index) {
              return AppItem(projectInfo: itemData[index]);
            },
          ),
        ),
      ],
    );
  }
}
