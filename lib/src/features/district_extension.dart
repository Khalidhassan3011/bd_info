/// [AllDistrictsByDivision] is an extension on the District class, providing
/// functionality to retrieve all Upazilas associated with a specific district.
///
/// Purpose:
/// This extension allows easy access to all Upazilas within a District using
/// the `allUpazilas` getter.
///
/// [allUpazilas] : Retrieves a list of Upazila objects belonging to the current District.
///
/// Usage:
/// Developers can use this extension to fetch all Upazilas for a particular District
/// directly from instances of the District class.

import 'package:bd_info/bd_info.dart';


extension AllDistrictsByDivsion on District {

  // Retrieves a list of Upazila objects associated with the current District.

  List<Upazila> get allUpazilas => BdInfo.allUpazilas
      .where((upazila) => upazila.district == name)
      .toList();
}
