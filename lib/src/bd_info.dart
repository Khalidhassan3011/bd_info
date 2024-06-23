// ignore_for_file: library_private_types_in_public_api

export 'model/division.dart';

import 'common/strings.dart';
import 'model/division.dart';

part 'data/division_list.dart';

part 'model/bangladesh_info.dart';

class BdInfo {
  static _BangladeshInfo get basicInfo => _BangladeshInfo();

  static List<Division> get allDivision => _DivisionList.divisions;
}
