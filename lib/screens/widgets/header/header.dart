import 'package:app/screens/widgets/page_navigator/page_navigator_column_widget.dart';
import 'package:app/screens/widgets/page_navigator/page_navigator_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../home/bloc/page_index_bloc.dart';
import 'app_logo.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  void _openNavigation(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      useSafeArea: true,
      builder: (_) {
        return AlertDialog(
          alignment: Alignment.center,
          content: PageNavigatorColumnWidget(callback: () {
            Navigator.of(context).pop();
          }),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppLogo(
                  onLogoClick: () {},
                ),
                IconButton(
                  onPressed: () {
                    _openNavigation(context);
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.bars,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppLogo(
                  onLogoClick: () {},
                ),
                const PageNavigatorRowWidget(),
              ],
            ),
          );
        }
      },
    );
  }
}
