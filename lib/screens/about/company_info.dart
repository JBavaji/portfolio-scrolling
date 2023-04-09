import 'package:app/screens/about/point_item.dart';
import 'package:flutter/material.dart';

import 'designation_item.dart';
import 'model/company_info_model.dart';

class CompanyInfo extends StatelessWidget {
  final CompanyInfoModel data;

  const CompanyInfo({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data.name,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...data.designations
                    .map(
                      (designation) => DesignationItem(
                        title: designation.title,
                        start: designation.start,
                        end: designation.end,
                      ),
                    )
                    .toList(growable: false),
              ],
            ),
            const SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...data.points
                    .map((point) => PointItem(point: point))
                    .toList(growable: false),
              ],
            ),
          ],
        )
      ],
    );
  }
}
