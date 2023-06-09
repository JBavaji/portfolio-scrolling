import 'package:app/screens/portfolio/model/app_info.dart';
import 'package:flutter/material.dart';

import 'app_url_widget.dart';
import 'model/project_info_model.dart';

class AppItem extends StatelessWidget {
  final ProjectInfoModel projectInfo;

  const AppItem({Key? key, required this.projectInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width * 0.30;
    double height = size.height * 0.70;
    if(size.width < 600) {
      width = size.width * 0.65;
      height = size.height;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Stack(
        fit: StackFit.loose,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 40),
            height: height,
            width: width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
          Positioned(
            top: 120,
            left: 20,
            child: AppInfo(projectInfo: projectInfo),
          ),
          Positioned(
            left: 50,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: Center(
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      projectInfo.logo,
                      fit: BoxFit.fill,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey.shade700,
                          alignment: Alignment.center,
                          child: const Text(
                            'Whoops!',
                            style: TextStyle(fontSize: 10),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ...generateWidgetForUrl(projectInfo.urls, Colors.green),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
