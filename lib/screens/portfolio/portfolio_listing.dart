import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'app_item.dart';
import 'dots_scroll_widget.dart';
import 'model/project_info_model.dart';
import 'model/projects_info_list_data.dart';

class PortfolioListing extends StatefulWidget {
  const PortfolioListing({Key? key}) : super(key: key);

  @override
  State<PortfolioListing> createState() => _PortfolioListingState();
}

class _PortfolioListingState extends State<PortfolioListing> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  List<ProjectInfoModel> itemData = [];
  int currentPosition = 0;
  int scrollNext = 3;

  @override
  void initState() {
    setState(() {
      itemData = projectInfoList;
    });

    itemPositionsListener.itemPositions.addListener(() {
      Iterable<int> indices =
          itemPositionsListener.itemPositions.value.where((item) {
        final isTopVisible = item.itemLeadingEdge >= 0;
        final isBottomVisible = item.itemTrailingEdge <= 1;
        return isTopVisible && isBottomVisible;
      }).map((item) {
        return item.index;
      });

      if (indices.isNotEmpty) {
        int pageNum = indices.first ~/ scrollNext;
        if (currentPosition != pageNum) {
          setState(() {
            currentPosition = pageNum;
          });
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    scrollNext = 3;
    int totalPages = itemData.length ~/ scrollNext;
    Size size = MediaQuery.of(context).size;
    double height = size.height * 0.60;
    double width = size.width;
    if (size.width < 600) {
      scrollNext = 2;
      totalPages = itemData.length ~/ scrollNext;
      height = size.height * 0.60;
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: height,
          width: width,
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
        DotsScroll(
          total: totalPages,
          current: currentPosition,
          onClick: (number) {
            setState(() {
              currentPosition = number;
            });
            itemScrollController.scrollTo(
              index: currentPosition * scrollNext,
              duration: const Duration(seconds: 1),
            );
          },
        ),
      ],
    );
  }
}
