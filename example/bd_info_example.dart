import 'package:bd_info/bd_info.dart';
import 'package:bd_info/src/features/district_extension.dart';
import 'package:bd_info/src/features/division_extension.dart';

void main() {

  //Get BasicInfo About Bangladesh
  var bdInfo = BdInfo.basicInfo;
  print(bdInfo.toString());

  //Get All Divisions
  List<Division> divisions = BdInfo.allDivisions;

  //Get All Districts
  List<District> districts = BdInfo.allDistricts;

  //Get All Upazillas
  List<Upazila> upazilas = BdInfo.allUpazilas;

  //Get Districts by Division
  Division division = BdInfo.allDivisions.first;
  List<District> allDistrictsByDivision = division.allDistricts;

  //Get Upazillas by Division
  List<Upazila> allUpazilasByDivision = division.allUpazilas;

  //Get Upazillas by District
  District district = BdInfo.allDistricts.first;
  List<Upazila> allUpazilasByDistrict = district.allUpazilas;

  //Know which division given district belongs to
  Division whichDivision = BdInfo.whichDivision(district);

  //know which District given Upazilla belongs to
  District whichDistrict = BdInfo.whichDistrict(upazilas);
}
