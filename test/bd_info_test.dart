import 'package:bd_info/bd_info.dart';
import 'package:bd_info/src/common/strings.dart';
import 'package:bd_info/src/features/division_extension.dart';
import 'package:test/test.dart';

void main() {
  var basicInfo = BdInfo.basicInfo;

  test("Verify basic info", () {
    final propertiesToCheck = [
      basicInfo.totalDivisions,
      basicInfo.totalDistricts,
      basicInfo.toalUpazilas,
      basicInfo.totalUnion,
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
    test("division data length == basic info total division", () {
      expect(BdInfo.allDivisions.length, basicInfo.totalDivisions);
    });

    test("sum of district form division data == basic info total district", () {
      int totalDistrictsFromDivisionList = BdInfo.allDivisions.fold(
          0, (previousValue, item) => previousValue + item.totalDistricts);

      expect(totalDistrictsFromDivisionList, basicInfo.totalDistricts);
    });

    test("sum of upazila form division data == basic info total upazila", () {
      int totalUpazilasFromDivisionList = BdInfo.allDivisions
          .fold(0, (previousValue, item) => previousValue + item.toalUpazilas);

      expect(totalUpazilasFromDivisionList, basicInfo.toalUpazilas);
    });

    test("sum of union form division data == basic info total union", () {
      int totalUnionCouncilsFromDivisionList = BdInfo.allDivisions
          .fold(0, (previousValue, item) => previousValue + item.totalUnion);

      expect(totalUnionCouncilsFromDivisionList, basicInfo.totalUnion);
    });

    test("sum of area form division data == basic info total area", () {
      double areaFromDivisionList = BdInfo.allDivisions
          .fold(0, (previousValue, item) => previousValue + item.area);

      expect(areaFromDivisionList, basicInfo.area);
    });

    test("sum of population form division data == basic info total population",
        () {
      int populationFromDivisionList = BdInfo.allDivisions
          .fold(0, (previousValue, item) => previousValue + item.population);

      expect(populationFromDivisionList, basicInfo.population);
    });
  });

  group('Verify District list data', () {
    test("district data length == basic info total district", () {
      expect(BdInfo.allDistricts.length, basicInfo.totalDistricts);
    });

    test(
      "filter district by division form district data == total district form division",
      () {
        for (var division in BdInfo.allDivisions) {
          List<District> filterDistrictsByDivision = BdInfo.allDistricts
              .where((item) => item.division == division.name)
              .toList();

          expect(filterDistrictsByDivision.length, division.totalDistricts);
        }
      },
    );

    test(
      "sum of upazila from filter district by division form district data == total upazila form division",
      () {
        for (var division in BdInfo.allDivisions) {
          List<District> filterDistrictsByDivision = BdInfo.allDistricts
              .where((item) => item.division == division.name)
              .toList();

          int countUpozila = filterDistrictsByDivision.fold(
              0, (previousValue, item) => previousValue + item.totalUpazilas);

          expect(countUpozila, division.toalUpazilas);
        }
      },
    );
  });

  test("check extension on division for allDistricts", () {
    for (Division division in BdInfo.allDivisions) {
      int countTotalUpazilas = division.allDistricts
          .fold(0, (previous, element) => previous + element.totalUpazilas);

      expect(countTotalUpazilas, division.toalUpazilas);
    }
  });

  test("check extension on division for allUpoazilas", () {
    for (Division division in BdInfo.allDivisions) {
      List<Upazila> countTotalUpazilas = division.allUpoazilas
          .where((element) => element.division == division.name)
          .toList();

      expect(countTotalUpazilas.length, division.toalUpazilas);
    }
  });

  group('Verify upazila list data', () {
    test("upazila data length == basic info total upazila", () {
      expect(BdInfo.allUpozilas.length, basicInfo.toalUpazilas);
    });

    test(
        "filter upazila by division form upazila data == total upazila from division",
        () {
      for (Division division in BdInfo.allDivisions) {
        List<Upazila> filterUpazilaByDivision = BdInfo.allUpozilas
            .where((item) => item.division == division.name)
            .toList();

        expect(filterUpazilaByDivision.length, division.toalUpazilas);
      }
    });

    test(
        "filter upazila by district form upazila data == total upazila from district",
        () {
      for (District district in BdInfo.allDistricts) {
        List<Upazila> filterUpazilaByDistrict = BdInfo.allUpozilas
            .where((item) => item.district == district.name)
            .toList();

        expect(filterUpazilaByDistrict.length, district.totalUpazilas);
      }
    });
  });
}
