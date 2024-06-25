/// [AllDistrictsByDivision] is an extension on the Division class, providing
/// functionality to retrieve all Districts and Upazilas associated with a specific division.
///
/// This extension allows easy access to all Districts and Upazilas within a Division
/// using the `allDistricts` and `allUpazilas` getters.
///
/// Functionality:
/// - [allDistricts]: Retrieves a list of District objects that belong to the current Division.
/// - [allUpazilas]: Retrieves a list of Upazila objects that belong to the current Division.
///
/// Developers can use this extension to fetch all Districts and Upazilas for a particular Division
/// directly from instances of the Division class.

import 'package:bd_info/bd_info.dart';

extension AllDistrictsByDivsion on Division {

  //Returns list of District objects where each District belongs to the current Division.

  List<District> get allDistricts => BdInfo.allDistricts
      .where((district) => district.division == name)
      .toList();

  //Returns list of Upazila objects where each Upazila belongs to the current Division.

  List<Upazila> get allUpazilas => BdInfo.allUpazilas
      .where((upazila) => upazila.division == name)
      .toList();
}
