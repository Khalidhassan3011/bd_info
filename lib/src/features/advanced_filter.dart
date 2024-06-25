/// [_AdvancedFilter] provides utility methods to filter and retrieve Division
/// and District objects based on dynamic models.
///
/// Purpose:
/// This class encapsulates static methods to determine the Division and District
/// objects based on dynamic input models, such as Division, District, or Upazila.
///
/// Functionality:
/// - [whichDivision]: Determines the Division object from the input model.
/// - [whichDistrict]: Determines the District object from the input model.
///
/// Usage:
/// Developers can utilize these static methods to infer the Division or District
/// objects from various models within the Bangladesh information library.

part of '../bd_info.dart';



class _AdvancedFilter {

  //Determines the Division object from the given dynamic model.
  //Parameters are Dynamic input model which can be Division,District or Upazila.
  static Division whichDivision(dynamic model) {

    if (model is Division) return model;

    if (model is District) {
      return BdInfo.allDivisions
          .firstWhere((division) => (model).division == division.name);
    }

    // If model is an Upazila, find the corresponding Division.
    if(model is Upazila) {
      return BdInfo.allDivisions
          .firstWhere((division) => (model).division == division.name);
    }

    // Throw an exception if the model type is invalid or unrecognized.
    throw invalidModel;
  }

  //Determines the District object from the given dynamic model.
  //Parameters are Dynamic input model which can be District or Upazila.
  static District whichDistrict(dynamic model) {
    if (model is District) return model;

    if(model is Upazila) {
      return BdInfo.allDistricts
          .firstWhere((district) => (model).district == district.name);
    }

    // Throw an exception if the model type is invalid or unrecognized.
    throw invalidModel;
  }
}
