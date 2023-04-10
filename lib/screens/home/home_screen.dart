import 'package:app/screens/home/screens_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'bloc/page_index_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /// Controller to scroll or jump to a particular item.
  final ItemScrollController itemScrollController = ItemScrollController();

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
