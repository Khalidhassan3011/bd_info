import 'package:bd_info/bd_info.dart';
import 'package:bd_info/src/features/district_extension.dart';
import 'package:bd_info/src/features/division_extension.dart';

void main() {
  var bdInfo = BdInfo.basicInfo;
  print(bdInfo.toString());

  Division division = BdInfo.allDivisions.first;
  District district = BdInfo.allDistricts.first;
  Upazila upazila = BdInfo.allUpazilas.first;

  List<District> allDistrictsByDivision = division.allDistricts;
  List<Upazila> allUpazilasByDivision = division.allUpazilas;

  List<Upazila> allUpazilasByDistrict = district.allUpazilas;

  Division whichDivision = BdInfo.whichDivision(district);
  District whichDistrict = BdInfo.whichDistrict(upazila);
}
