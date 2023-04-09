import 'package:app/screens/about/designation_item.dart';
import 'package:app/screens/about/point_item.dart';
import 'package:flutter/material.dart';

import 'model/company_info_model.dart';

class EducationInfo extends StatelessWidget {
  final CompanyInfoModel data;

  const EducationInfo({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  data.name,
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        color: Colors.grey.shade900,
                      ),
                ),
              ),
              Text(
                data.status,
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: Colors.grey.shade900,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          DesignationItem(
              title: data.designations[0].title,
              start: data.designations[0].start,
              end: data.designations[0].end),
          const SizedBox(height: 10),
          PointItem(point: data.points[0]),
        ],
      ),
    );
  }
}
