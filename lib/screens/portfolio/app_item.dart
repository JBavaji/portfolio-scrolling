import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/social_media/social_media_data.dart';
import 'app_url_widget.dart';
import 'model/project_info_model.dart';

class AppItem extends StatelessWidget {
  final ProjectInfoModel projectInfo;

  const AppItem({Key? key, required this.projectInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Stack(
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
          Positioned(
            top: 120,
            left: 20,
            child: Column(
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
            ),
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
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

