import 'package:bd_info/bd_info.dart';
import 'package:bd_info/src/common/strings.dart';
import 'package:test/test.dart';

void main() {
  var basicInfo = BdInfo.basicInfo;

  test("Verify basic info", () {
    final propertiesToCheck = [
      basicInfo.totalDivisions,
      basicInfo.totalDistricts,
      basicInfo.toalUpazilas,
      basicInfo.totalUnionCouncils,
      basicInfo.area,
      basicInfo.population,
    ];

    for (var value in propertiesToCheck) {
      expect(value, isNonZero);
      expect(value, isNonNegative);
      expect(value, isPositive);
    }
  });

  group('Verify Division list data', () {
    test("verify totalDivisions count", () {
      expect(BdInfo.allDivisions.length, basicInfo.totalDivisions);
    });

    test("verify totalDistricts count", () {
      int totalDistrictsFromDivisionList = BdInfo.allDivisions.fold(
          0, (previousValue, item) => previousValue + item.totalDistricts);

      expect(totalDistrictsFromDivisionList, basicInfo.totalDistricts);
    });

    test("verify toalUpazilas count", () {
      int totalUpazilasFromDivisionList = BdInfo.allDivisions
          .fold(0, (previousValue, item) => previousValue + item.toalUpazilas);

      expect(totalUpazilasFromDivisionList, basicInfo.toalUpazilas);
    });

    test("verify Union Councils count", () {
      int totalUnionCouncilsFromDivisionList = BdInfo.allDivisions.fold(
          0, (previousValue, item) => previousValue + item.totalUnionCouncils);

      expect(totalUnionCouncilsFromDivisionList, basicInfo.totalUnionCouncils);
    });

    test("verify area", () {
      double areaFromDivisionList = BdInfo.allDivisions
          .fold(0, (previousValue, item) => previousValue + item.area);

      expect(areaFromDivisionList, basicInfo.area);
    });

    test("verify population", () {
      int populationFromDivisionList = BdInfo.allDivisions
          .fold(0, (previousValue, item) => previousValue + item.population);

      expect(populationFromDivisionList, basicInfo.population);
    });
  });

  group("Verify District list data", () {

    test("verify total District count", () {
      expect(BdInfo.allDistricts.length, basicInfo.totalDistricts);
    });

    for (var division in BdInfo.allDivisions) {

      List<District> filterDistrictsByDivision = BdInfo.allDistricts
          .where((item) => item.division == division.name)
          .toList();

      int countUpozila = filterDistrictsByDivision.fold(0,
              (previousValue, item) => previousValue + item.totalUpazilas);

      test("District count based on basic info", () {
        expect(filterDistrictsByDivision.length, division.totalDistricts);
      });

      test("upazila count based on basic info", () {
        expect(countUpozila, division.toalUpazilas);
      });

    }

  });
}
