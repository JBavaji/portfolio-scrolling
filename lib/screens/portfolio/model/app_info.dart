import 'package:app/screens/portfolio/model/project_info_model.dart';
import 'package:flutter/material.dart';

class AppInfo extends StatelessWidget {
  final ProjectInfoModel projectInfo;

  const AppInfo({Key? key, required this.projectInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width * 0.25;
    double height = size.height * 0.75;
    if(size.width < 600) {
      width = size.width * 0.55;
      height = size.height * 0.45;
    }

    return SizedBox(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            projectInfo.title,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(height: 20),
          Text(
            projectInfo.description,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 10),
          Text(
            projectInfo.downloads,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
