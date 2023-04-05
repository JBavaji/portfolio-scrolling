import 'package:app/screens/contact/contact.dart';
import 'package:app/screens/intro/intro.dart';
import 'package:app/screens/widgets/footer/footer.dart';
import 'package:app/screens/widgets/header/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  /// Listener that reports the position of items when the list is scrolled.
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  @override
  void initState() {
    super.initState();
    // itemPositionsListener.itemPositions.addListener(() {
    //   final indices = itemPositionsListener.itemPositions.value.where((item) {
    //     final isTopVisible = item.itemLeadingEdge >= 0;
    //     final isBottomVisible = item.itemTrailingEdge <= 1;
    //     return isTopVisible && isBottomVisible;
    //   }).map((item) {
    //     return item.index;
    //   }).first;
    //
    //   print(indices);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<PageIndexBloc, PageIndexState>(
          listener: (context, state) {
            if (state is ScrollCurrentPageIndexState) {
              itemScrollController.scrollTo(
                index: state.currentPage,
                duration: const Duration(seconds: 1),
              );
            }
          },
          child: ScrollablePositionedList.builder(
            itemCount: 4,
            itemScrollController: itemScrollController,
            itemPositionsListener: itemPositionsListener,
            itemBuilder: (context, index) {
              switch (index) {
                case 0:
                  return const Header();

                case 1:
                  return const Intro();

                case 2:
                  return const Contact();

                case 3:
                  return const Footer();


                default:
                  return Container(
                    color: Colors.green,
                    height: 10,
                  );
              }
            },
          ),
        ),
      ),
    );
  }
}
