import 'package:app/screens/about/about_me.dart';
import 'package:app/screens/contact/contact.dart';
import 'package:app/screens/intro/intro_screen.dart';
import 'package:app/screens/portfolio/portfolio.dart';
import 'package:app/screens/widgets/footer/footer.dart';
import 'package:app/screens/widgets/header/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../skills/technology_stack.dart';
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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const FaIcon(FontAwesomeIcons.arrowUp),
        onPressed: () {
          itemScrollController.scrollTo(
            index: 0,
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
                alignment: state.currentPage == 2 ? 0 : 0.1,
                duration: const Duration(seconds: 1),
              );
            }
          },
          child: ScrollablePositionedList.builder(
            itemCount: 7,
            itemScrollController: itemScrollController,
            itemBuilder: (context, index) {
              switch (index) {
                case 0:
                  return const Header();

                case 1:
                  return const Intro();

                case 2:
                  return const Portfolio();

                case 3:
                  return const TechnologyStack();

                case 4:
                  return const AboutMe();

                case 5:
                  return const Contact();

                case 6:
                  return const Footer();

                default:
                  return Container(
                    color: Colors.green,
                    height: 0,
                  );
              }
            },
          ),
        ),
      ),
    );
  }
}
