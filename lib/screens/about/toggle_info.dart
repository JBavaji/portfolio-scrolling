import 'package:app/screens/about/education_info.dart';
import 'package:app/screens/about/model/experience_company_data.dart';
import 'package:app/screens/about/personal_info.dart';
import 'package:app/screens/about/toggle_button_widget.dart';
import 'package:flutter/material.dart';

class ToggleInfo extends StatefulWidget {
  const ToggleInfo({Key? key}) : super(key: key);

  @override
  State<ToggleInfo> createState() => _ToggleInfoState();
}

enum ToggleInfoView {
  personal,
  educational,
}

class _ToggleInfoState extends State<ToggleInfo> {
  late ToggleInfoView _infoView;

  @override
  void initState() {
    _infoView = ToggleInfoView.personal;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ToggleButtonWidget(
              label: 'Personal Info',
              isSelected: _infoView == ToggleInfoView.personal,
              onButtonClick: () {
                setState(() {
                  _infoView = ToggleInfoView.personal;
                });
              },
            ),
            ToggleButtonWidget(
              label: 'Education Info',
              isSelected: _infoView == ToggleInfoView.educational,
              onButtonClick: () {
                setState(() {
                  _infoView = ToggleInfoView.educational;
                });
              },
            ),
          ],
        ),
        _infoView == ToggleInfoView.personal
            ? const PersonalInfo()
            : SizedBox(
                height: MediaQuery.of(context).size.height * 0.50,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    EducationInfo(data: companyInfoList[6]),
                    EducationInfo(data: companyInfoList[7]),
                  ],
                ),
              ),
      ],
    );
  }
}
