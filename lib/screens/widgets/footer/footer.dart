import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/bloc/page_index_bloc.dart';
import '../../home/screens_data.dart';
import '../header/app_logo.dart';
import '../page_navigator/page_navigator_row_widget.dart';
import '../social_media/social_media_row_widget.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppLogo(
                onLogoClick: () {
                  BlocProvider.of<PageIndexBloc>(context).add(
                    ScrollToPageIndexEvent(ScreenNavigation.header.index),
                  );
                },
              ),
              MediaQuery.of(context).size.width > 700
                  ? const PageNavigatorRowWidget()
                  : const SizedBox(),
              const SocialMediaRowWidget(),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Divider(
              color: Colors.black26,
              height: 1,
            ),
          ),
          Text(
            'Copyright © ${DateTime.now().year} | All Rights Reserved',
          ),
        ],
      ),
    );
  }
}
