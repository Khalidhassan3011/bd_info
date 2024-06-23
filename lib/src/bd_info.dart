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

class BdInfo {
  static _BangladeshInfo get basicInfo => _BangladeshInfo();

  static List<Division> get allDivisions => _DivisionList.divisions;

  static List<District> get allDistricts => _DistrictList.districts;

  static List<Upazila> get allUpozilas => _UpazilaList.upazilas;
}
