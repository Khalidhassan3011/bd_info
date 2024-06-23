import 'package:bd_info/bd_info.dart';
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
      expect(basicInfo.totalDivisions, equals(BdInfo.allDivision.length));
    });

    test("verify totalDistricts count", () {
      int totalDistrictsFromDivisionList = BdInfo.allDivision.fold(
          0, (previousValue, item) => previousValue + item.totalDistricts);

      expect(basicInfo.totalDistricts, equals(totalDistrictsFromDivisionList));
    });

    test("verify toalUpazilas count", () {
      int totalUpazilasFromDivisionList = BdInfo.allDivision
          .fold(0, (previousValue, item) => previousValue + item.toalUpazilas);

      expect(basicInfo.toalUpazilas, equals(totalUpazilasFromDivisionList));
    });

    test("verify Union Councils count", () {
      int totalUnionCouncilsFromDivisionList = BdInfo.allDivision.fold(
          0, (previousValue, item) => previousValue + item.totalUnionCouncils);

      expect(basicInfo.totalUnionCouncils,
          equals(totalUnionCouncilsFromDivisionList));
    });

    test("verify area", () {
      double areaFromDivisionList = BdInfo.allDivision
          .fold(0, (previousValue, item) => previousValue + item.area);

      expect(basicInfo.area, equals(areaFromDivisionList));
    });

    test("verify population", () {
      int populationFromDivisionList = BdInfo.allDivision
          .fold(0, (previousValue, item) => previousValue + item.population);

      expect(basicInfo.population, equals(populationFromDivisionList));
    });
  });
}
