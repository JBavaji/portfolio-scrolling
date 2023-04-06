import 'package:app/screens/portfolio/app_item.dart';
import 'package:app/screens/portfolio/app_url_widget.dart';
import 'package:app/screens/portfolio/model/project_info_model.dart';
import 'package:app/screens/widgets/stroke_text_style.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'model/projects_info_list_data.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  List<ProjectInfoModel> itemData = [];
  int currentPosition = 0;

  @override
  void initState() {
    setState(() {
      itemData = projectInfoList;
    });

    itemPositionsListener.itemPositions.addListener(() {
      final indices = itemPositionsListener.itemPositions.value.where((item) {
        final isTopVisible = item.itemLeadingEdge >= 0;
        final isBottomVisible = item.itemTrailingEdge <= 1;
        return isTopVisible && isBottomVisible;
      }).map((item) {
        return item.index;
      }).first;

      int pageNum = indices ~/ 3;
      if(currentPosition != pageNum){
        setState(() {
          currentPosition = pageNum;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int totalPages = (itemData.length / 3) as int;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            // Instead of two different colors here I want to have the two other Linear gradients
            // with each having two other different colors that go from top to bottom
            Colors.green.withOpacity(0.15),
            Colors.transparent,
          ],
          stops: const [0.2, 0.8],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Column(
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
            child: ScrollablePositionedList.builder(
              itemScrollController: itemScrollController,
              itemPositionsListener: itemPositionsListener,
              scrollDirection: Axis.horizontal,
              itemCount: itemData.length,
              itemBuilder: (context, index) {
                return AppItem(projectInfo: itemData[index]);
              },
            ),
          ),
          SizedBox(
            height: 100,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...generateWidgetForPage(
                    totalPages,
                    currentPosition,
                    (number) {
                      setState(() {
                        currentPosition = number;
                      });
                      itemScrollController.scrollTo(
                        index: currentPosition * 3,
                        duration: const Duration(seconds: 1),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
