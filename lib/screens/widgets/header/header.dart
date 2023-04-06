import 'package:app/screens/widgets/page_navigator/page_navigator_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/bloc/page_index_bloc.dart';
import 'app_logo.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
