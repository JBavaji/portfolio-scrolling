import 'package:app/screens/home/screens_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:universal_html/html.dart' as html;

import 'bloc/page_index_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /// Controller to scroll or jump to a particular item.
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  @override
  void initState() {
    itemPositionsListener.itemPositions.addListener(() {
      final indices = itemPositionsListener.itemPositions.value.where((item) {
        final isTopVisible = item.itemLeadingEdge >= 0.1;
        final isBottomVisible = item.itemTrailingEdge >= 0.5;

        return isTopVisible && isBottomVisible;
      }).map((item) {
        return item.index;
      });

      if (indices.isNotEmpty) {
        if (indices.contains(ScreenNavigation.values.length)) {
          html.window.history.pushState(
              null, '', 'page=${ScreenNavigation.values[indices.first].name}');
        } else {
          html.window.history.pushState(
              null, '', 'page=${ScreenNavigation.values[indices.last].name}');
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const FaIcon(FontAwesomeIcons.arrowUp),
        onPressed: () {
          itemScrollController.scrollTo(
            index: ScreenNavigation.header.index,
            duration: const Duration(seconds: 1),
          );
        },
      ),
      body: SafeArea(
        child: BlocListener<PageIndexBloc, PageIndexState>(
          listener: (context, state) {
            if (state is ScrollCurrentPageIndexState) {
              itemScrollController.scrollTo(
                index: state.currentPage,
                alignment: state.currentPage == ScreenNavigation.portfolio.index
                    ? 0
                    : 0.1,
                duration: const Duration(seconds: 1),
              );
            }
          },
          child: ScrollablePositionedList.builder(
            itemCount: screens.length,
            itemPositionsListener: itemPositionsListener,
            itemScrollController: itemScrollController,
            itemBuilder: (context, index) {
              return screens[index];
            },
          ),
        ),
      ),
    );
  }
}
