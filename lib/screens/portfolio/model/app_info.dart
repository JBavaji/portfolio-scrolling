import 'package:app/screens/portfolio/model/project_info_model.dart';
import 'package:flutter/material.dart';

import '../app_url_widget.dart';

class AppInfo extends StatelessWidget {
 final ProjectInfoModel projectInfo;

  const AppInfo({Key? key, required this.projectInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.25,
          ),
          child: Text(
            projectInfo.title,
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const SizedBox(height: 20),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.25,
          ),
          child: Text(
            projectInfo.description,
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          projectInfo.downloads,
          style: Theme.of(context).textTheme.displayMedium,
        ),

        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ...generateWidgetForUrl(projectInfo.urls, Colors.green),
            ],
          ),
        ),

      ],
    );
  }
}
