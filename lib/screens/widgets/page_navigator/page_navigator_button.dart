import 'package:app/screens/model/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/bloc/page_index_bloc.dart';

class PageNavigatorButton extends StatefulWidget {
  final AppPage page;
  final Function? callback;

  const PageNavigatorButton({
    Key? key,
    required this.page,
    this.callback,
  }) : super(key: key);

  @override
  State<PageNavigatorButton> createState() => _PageNavigatorButtonState();
}

class _PageNavigatorButtonState extends State<PageNavigatorButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: TextButton(
        child: Text(
          widget.page.label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          BlocProvider.of<PageIndexBloc>(context)
              .add(ScrollToPageIndexEvent(widget.page.index));

          if (widget.callback != null) {
            widget.callback!();
          }
        },
      ),
    );
  }
}
