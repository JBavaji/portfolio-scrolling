import 'package:app/screens/about/company_info.dart';
import 'package:app/screens/about/model/company_info_model.dart';
import 'package:flutter/material.dart';

class YearsInfo extends StatefulWidget {
  const YearsInfo({Key? key}) : super(key: key);

  @override
  State<YearsInfo> createState() => _YearsInfoState();
}

class _YearsInfoState extends State<YearsInfo> {
  double _value = 0;
  double minYear = 0;
  double maxYear = 0;
  int division = 0;

  @override
  void initState() {
    minYear = 2012.0;
    maxYear = DateTime.now().year.toDouble();
    division = (maxYear - minYear) as int;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int yearSelected = (2023 - _value) as int;
    CompanyInfoModel infoModel = CompanyInfoModel.byYear(yearSelected);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('$maxYear',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  Text('$minYear',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(fontWeight: FontWeight.bold)),
                ],
              ),
              Slider(
                min: 0,
                max: division.toDouble(),
                value: _value,
                divisions: division,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              CompanyInfo(data: infoModel),
            ],
          ),
        ),
      ),
    );
  }
}
