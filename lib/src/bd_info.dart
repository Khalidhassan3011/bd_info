// This file exports all necessary model classes and parts related to Bangladesh information.

// ignore_for_file: library_private_types_in_public_api

export 'model/division.dart';
export 'model/district.dart';
export 'model/upazila.dart';

import 'package:bd_info/src/model/upazila.dart';

import 'common/strings.dart';
import 'model/district.dart';
import 'model/division.dart';

part 'model/bangladesh_info.dart';

part 'data/division_list.dart';

part 'data/district_list.dart';

part 'data/upazila_list.dart';

part 'features/advanced_filter.dart';

//BdInfo class provides static methods and properties to access Bangladesh-related information.
class BdInfo {

  // Get basic information about Bangladesh
  static _BangladeshInfo get basicInfo => _BangladeshInfo();

  // Get all Divisions of Bangladesh
  static List<Division> get allDivisions => _DivisionList.divisions;

  // Get all Districts of Bangladesh
  static List<District> get allDistricts => _DistrictList.districts;

  // Get all Upazillas of Bangladesh
  static List<Upazila> get allUpazilas => _UpazilaList.upazilas;

  // Determine the division from a given model.
  static Division whichDivision(dynamic model) =>
      _AdvancedFilter.whichDivision(model);

  // Determine the district from a given model.
  static District whichDistrict(dynamic model) =>
      _AdvancedFilter.whichDistrict(model);
}
