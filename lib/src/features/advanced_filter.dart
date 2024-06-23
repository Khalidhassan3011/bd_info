part of '../bd_info.dart';

class _AdvancedFilter {
  static Division whichDivision(dynamic model) {
    if (model is Division) return model;

    if (model is District) {
      return BdInfo.allDivisions
          .firstWhere((division) => (model).division == division.name);
    }

    if(model is Upazila) {
      return BdInfo.allDivisions
          .firstWhere((division) => (model).division == division.name);
    }

    throw invalidModel;
  }

  static District whichDistrict(dynamic model) {
    if (model is District) return model;

    if(model is Upazila) {
      return BdInfo.allDistricts
          .firstWhere((district) => (model).district == district.name);
    }

    throw invalidModel;
  }
}
