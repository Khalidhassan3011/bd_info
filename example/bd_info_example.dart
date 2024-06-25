/// This file provides an example of how to use the BdInfo library classes.
///
/// Purpose:
/// This Dart file serves as a demonstration of how developers can utilize
/// the BdInfo library to retrieve essential information about administrative
/// divisions, districts, and sub-districts (upazilas) of Bangladesh.
///
/// Functionality:
/// The main function demonstrates various functionalities of the BdInfo library:
/// 1. Retrieving basic information about Bangladesh using `BdInfo.basicInfo`.
/// 2. Accessing lists of all divisions, districts, and upazilas using `BdInfo.allDivisions`,
///    `BdInfo.allDistricts`, and `BdInfo.allUpazilas` respectively.
/// 3. Filtering districts and upazilas based on a specific division using methods like
///    `division.allDistricts` and `division.allUpazilas`.
/// 4. Determining which division a specific district belongs to using `BdInfo.whichDivision`.
/// 5. Finding out which district a particular upazila belongs to using `BdInfo.whichDistrict`.
///
/// Usage:
/// Developers can refer to this file to understand how to integrate BdInfo library
/// functionalities into their applications. It showcases efficient ways to retrieve
/// static data about Bangladesh's administrative regions without redundant data fetching
/// or recreation, enhancing performance and maintainability of the application.


import 'package:bd_info/bd_info.dart';
import 'package:bd_info/src/features/district_extension.dart';
import 'package:bd_info/src/features/division_extension.dart';

void main() {


  //To Get BasicInfo About Bangladesh
  var bdInfo = BdInfo.basicInfo;
  print(bdInfo.toString());

  //To Get All Divisions
  List<Division> divisions = BdInfo.allDivisions;

  //To Get All Districts
  List<District> districts = BdInfo.allDistricts;

  //To Get All Upazillas
  List<Upazila> upazilas = BdInfo.allUpazilas;

  //To Get Districts by Division
  Division division = BdInfo.allDivisions.first;
  List<District> allDistrictsByDivision = division.allDistricts;

  //To Get Upazillas by Division
  List<Upazila> allUpazilasByDivision = division.allUpazilas;

  //To Get Upazillas by District
  District district = BdInfo.allDistricts.first;
  List<Upazila> allUpazilasByDistrict = district.allUpazilas;

  //To Know which division given district belongs to
  Division whichDivision = BdInfo.whichDivision(district);

  //To know which District given Upazilla belongs to
  District whichDistrict = BdInfo.whichDistrict(upazilas);
}
