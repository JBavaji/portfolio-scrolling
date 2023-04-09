
import 'designation_info_model.dart';
import 'experience_company_data.dart';

class CompanyInfoModel {
  final String name;
  final String status;
  List<DesignationInfoModel> designations;
  List<String> points;
  bool expanded;

  CompanyInfoModel({
    required this.name,
    required this.status,
    required this.designations,
    required this.points,
    required this.expanded,
  });

  static  CompanyInfoModel byYear(int yearSelected) {
    int index = 0;
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

    return companyInfoList[index];
  }
}