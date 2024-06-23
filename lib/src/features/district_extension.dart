import 'package:bd_info/bd_info.dart';

extension AllDistrictsByDivsion on District {
  List<Upazila> get allUpazilas => BdInfo.allUpazilas
      .where((upazila) => upazila.district == name)
      .toList();
}
