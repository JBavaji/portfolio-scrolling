import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class ScrollingExampleScreen extends StatefulWidget {
  const ScrollingExampleScreen({Key? key}) : super(key: key);

  @override
  State<ScrollingExampleScreen> createState() => _ScrollingExampleScreenState();
}

class _ScrollingExampleScreenState extends State<ScrollingExampleScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (currentIndex + 5 < 50) {
            currentIndex += 5;
          }

          itemScrollController.scrollTo(
            index: currentIndex,
            duration: const Duration(seconds: 2),
          );
        },
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Column(
            children: [
              Expanded(
                child: ScrollablePositionedList.builder(
                  itemCount: 50,
                  itemBuilder: (context, index) => Container(
                    alignment: Alignment.center,
                    height: 200,
                    child: Text('Item $index'),
                  ),
                  itemScrollController: itemScrollController,
                  itemPositionsListener: itemPositionsListener,
                  reverse: false,
                  scrollDirection: orientation == Orientation.portrait
                      ? Axis.vertical
                      : Axis.horizontal,
                ),
              ),
              positionsView,
            ],
          );
        },
      ),
    );
  }

  /// Controller to scroll or jump to a particular item.
  final ItemScrollController itemScrollController = ItemScrollController();

  /// Listener that reports the position of items when the list is scrolled.
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  Widget get positionsView => ValueListenableBuilder<Iterable<ItemPosition>>(
        valueListenable: itemPositionsListener.itemPositions,
        builder: (context, positions, child) {
          int? min;
          int? max;
          if (positions.isNotEmpty) {
            // Determine the first visible item by finding the item with the
            // smallest trailing edge that is greater than 0.  i.e. the first
            // item whose trailing edge in visible in the viewport.
            min = positions
                .where((ItemPosition position) => position.itemTrailingEdge > 0)
                .reduce((ItemPosition min, ItemPosition position) =>
                    position.itemTrailingEdge < min.itemTrailingEdge
                        ? position
                        : min)
                .index;
            // Determine the last visible item by finding the item with the
            // greatest leading edge that is less than 1.  i.e. the last
            // item whose leading edge in visible in the viewport.
            max = positions
                .where((ItemPosition position) => position.itemLeadingEdge < 1)
                .reduce((ItemPosition max, ItemPosition position) =>
                    position.itemLeadingEdge > max.itemLeadingEdge
                        ? position
                        : max)
                .index;
          }
          currentIndex = min ?? 0;
          return Row(
            children: <Widget>[
              Expanded(child: Text('First Item: ${min ?? ''}')),
              Expanded(child: Text('Last Item: ${max ?? ''}')),
            ],
          );
        },
      );
}
