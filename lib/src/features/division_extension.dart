import 'package:bd_info/bd_info.dart';

extension AllDistrictsByDivsion on Division {
  List<District> get allDistricts => BdInfo.allDistricts
      .where((district) => district.division == name)
      .toList();

  List<Upazila> get allUpoazilas => BdInfo.allUpazilas
      .where((upazila) => upazila.division == name)
      .toList();
}
