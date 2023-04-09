import 'package:app/screens/about/company_info.dart';
import 'package:flutter/material.dart';

import 'model/experience_company_data.dart';

class YearsInfo extends StatefulWidget {
  const YearsInfo({Key? key}) : super(key: key);

  @override
  State<YearsInfo> createState() => _YearsInfoState();
}

class _YearsInfoState extends State<YearsInfo> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    double min = 2012.0;
    double max = DateTime.now().year.toDouble();
    int division = (max - min) as int;
    int yearSelected = (2023 - _value) as int;

    int index = 0;

    // if (yearSelected.clamp(2006, 2009) == yearSelected) {
    //   role = 'BCA';
    //   index = 0;
    // } else if (yearSelected.clamp(2010, 2012) == yearSelected) {
    //   role = 'MCA';
    //   index = 0;
    // } else
    if (yearSelected.clamp(2012, 2013) == yearSelected) {
      index = 5;
    } else if (yearSelected.clamp(2013, 2016) == yearSelected) {
      index = 4;
    } else if (yearSelected.clamp(2016, 2018) == yearSelected) {
      index = 3;
    } else if (yearSelected.clamp(2018, 2019) == yearSelected) {
      index = 2;
    } else if (yearSelected.clamp(2019, 2020) == yearSelected) {
      index = 1;
    } else {
      index = 0;
    }

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
                  Text('$max',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  Text('$min',
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
              CompanyInfo(data: companyInfoList[index]),
            ],
          ),
        ),
      ),
    );
  }
}
