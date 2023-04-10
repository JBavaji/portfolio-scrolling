import 'package:app/screens/portfolio/portfolio_listing.dart';
import 'package:app/screens/portfolio/stroke_title_widget.dart';
import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            // Instead of two different colors here I want to have the two other Linear gradients
            // with each having two other different colors that go from top to bottom
            Colors.green.withOpacity(0.15),
            Colors.transparent,
          ],
          stops: const [0.2, 0.8],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          StrokeTitleWidget(),
          PortfolioListing(),
        ],
      ),
    );
  }
}
