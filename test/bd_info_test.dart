/// [bd_info_test] provides utility methods to test the functionalities of the package
///
/// Purpose:
/// This class is yo test and verify various aspects of the bd_info library,
///
/// Functionality:
/// - Basic Information Verification: Tests ensure that basic information about Bangladesh
/// is correctly defined and meets expected criteria
///
/// - Division List Verification:  Checks include verifying the total number of divisions,
/// summing districts, upazilas, union councils, area, and population across divisions
/// to match the basic information provided.
///  District List Verification
///  Upazilla List Verification
///
/// Usage:
/// Developers can utilize these tests to ensure accurate data representation
/// and calculations within the Bangladesh information library.

import 'dart:math';

import 'package:bd_info/bd_info.dart';
import 'package:bd_info/src/common/strings.dart';
import 'package:bd_info/src/features/district_extension.dart';
import 'package:bd_info/src/features/division_extension.dart';
import 'package:test/test.dart';

void main() {
  var basicInfo = BdInfo.basicInfo;

  // Test to verify basic information

  test("Verify basic info", () {
    final propertiesToCheck = [
      basicInfo.totalDivisions,
      basicInfo.totalDistricts,
      basicInfo.toalUpazilas,
      basicInfo.totalUnion,
      basicInfo.area,
      basicInfo.population,
    ];

    // Validate basic properties
    for (var value in propertiesToCheck) {
      expect(value, isNonZero);
      expect(value, isNonNegative);
      expect(value, isPositive);
    }
  });

  // Group to verify Division list data
  group('Verify Division list data', () {
    test("division data length == basic info total division", () {
      expect(BdInfo.allDivisions.length, basicInfo.totalDivisions);
    });


    // Test to validate sum of district data from divisions
    test("sum of district form division data == basic info total district", () {
      int totalDistrictsFromDivisionList = BdInfo.allDivisions.fold(
          0, (previousValue, item) => previousValue + item.totalDistricts);

      expect(totalDistrictsFromDivisionList, basicInfo.totalDistricts);
    });


    // Test to validate sum of upazila data from divisions
    test("sum of upazila form division data == basic info total upazila", () {
      int totalUpazilasFromDivisionList = BdInfo.allDivisions
          .fold(0, (previousValue, item) => previousValue + item.toalUpazilas);

      expect(totalUpazilasFromDivisionList, basicInfo.toalUpazilas);
    });

    // Test to validate sum of union data from divisions
    test("sum of union form division data == basic info total union", () {
      int totalUnionCouncilsFromDivisionList = BdInfo.allDivisions
          .fold(0, (previousValue, item) => previousValue + item.totalUnion);

      expect(totalUnionCouncilsFromDivisionList, basicInfo.totalUnion);
    });

    // Test to validate sum of area data from divisions
    test("sum of area form division data == basic info total area", () {
      double areaFromDivisionList = BdInfo.allDivisions
          .fold(0, (previousValue, item) => previousValue + item.area);

      expect(areaFromDivisionList, basicInfo.area);
    });

    // Test to validate sum of population data from divisions
    test("sum of population form division data == basic info total population",
        () {
      int populationFromDivisionList = BdInfo.allDivisions
          .fold(0, (previousValue, item) => previousValue + item.population);

      expect(populationFromDivisionList, basicInfo.population);
    });
  });


  // Group to verify District list data
  group('Verify District list data', () {
    test("district data length == basic info total district", () {
      expect(BdInfo.allDistricts.length, basicInfo.totalDistricts);
    });


    // Test to filter districts by division and validate count
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

    // Test to sum upazilas from districts by division and validate count
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

  // Test case to check extension on divisions for allDistricts
  test("check extension on division for allDistricts", () {
    for (Division division in BdInfo.allDivisions) {
      int countTotalUpazilas = division.allDistricts
          .fold(0, (previous, element) => previous + element.totalUpazilas);

      expect(countTotalUpazilas, division.toalUpazilas);
    }
  });

  test("check extension on division for allUpoazilas", () {
    for (Division division in BdInfo.allDivisions) {
      List<Upazila> countTotalUpazilas = division.allUpazilas
          .where((element) => element.division == division.name)
          .toList();

      expect(countTotalUpazilas.length, division.toalUpazilas);
    }
  });

  // Group to verify Upazila list data
  group('Verify upazila list data', () {
    test("upazila data length == basic info total upazila", () {
      expect(BdInfo.allUpazilas.length, basicInfo.toalUpazilas);
    });

    // Test to filter upazilas by division and validate count
    test(
        "filter upazila by division form upazila data == total upazila from division",
        () {
      for (Division division in BdInfo.allDivisions) {
        List<Upazila> filterUpazilaByDivision = BdInfo.allUpazilas
            .where((item) => item.division == division.name)
            .toList();

        expect(filterUpazilaByDivision.length, division.toalUpazilas);
      }
    });

    // Test to filter upazilas by district and validate count
    test(
        "filter upazila by district form upazila data == total upazila from district",
        () {
      for (District district in BdInfo.allDistricts) {
        List<Upazila> filterUpazilaByDistrict = BdInfo.allUpazilas
            .where((item) => item.district == district.name)
            .toList();

        expect(filterUpazilaByDistrict.length, district.totalUpazilas);
      }
    });
  });

  // Test case to check extension on districts
  test("check extension on district for allUpoazilas", () {
    for (District district in BdInfo.allDistricts) {
      List<Upazila> countTotalUpazilas = district.allUpazilas
          .where((element) => element.district == district.name)
          .toList();

      expect(countTotalUpazilas.length, district.totalUpazilas);
    }
  });

  // Test case to check whichDivision function
  test("check whichDivision function", () {

    // filter By Division
    Division division = BdInfo.whichDivision(BdInfo.allDivisions.first);
    expect(division, BdInfo.allDivisions.first);

    // filter By Division Randomly
    int randomNumber = Random().nextInt(BdInfo.allDivisions.length);
    division = BdInfo.whichDivision(BdInfo.allDivisions[randomNumber]);
    expect(division, BdInfo.allDivisions[randomNumber]);

    // filter By District
    division = BdInfo.whichDivision(BdInfo.allDistricts.first);
    expect(division.name, BdInfo.allDistricts.first.division);

    // filter By District Randomly
    randomNumber = Random().nextInt(BdInfo.allDistricts.length);
    division = BdInfo.whichDivision(BdInfo.allDistricts[randomNumber]);
    expect(division.name, BdInfo.allDistricts[randomNumber].division);

    // filter By Upazila
    division = BdInfo.whichDivision(BdInfo.allUpazilas.first);
    expect(division.name, BdInfo.allUpazilas.first.division);

    // filter By Upazila Randomly
    randomNumber = Random().nextInt(BdInfo.allUpazilas.length);
    division = BdInfo.whichDivision(BdInfo.allUpazilas[randomNumber]);
    expect(division.name, BdInfo.allUpazilas[randomNumber].division);

    // other check
    try {
      BdInfo.whichDivision(null);
    } catch (e) {
      expect(e, invalidModel);
    }

  });


  // Test case to check whichDivision function
  test("check whichDivision function", () {

    // filter by district
    District district =  BdInfo.whichDistrict(BdInfo.allDistricts.first);
    expect(district, BdInfo.allDistricts.first);

    // filter By district Randomly
    int randomNumber = Random().nextInt(BdInfo.allDistricts.length);
    district = BdInfo.whichDistrict(BdInfo.allDistricts[randomNumber]);
    expect(district, BdInfo.allDistricts[randomNumber]);

    // filter By Upazila
    district = BdInfo.whichDistrict(BdInfo.allUpazilas.first);
    expect(district.name, BdInfo.allUpazilas.first.district);

    // filter By Upazila Randomly
    randomNumber = Random().nextInt(BdInfo.allUpazilas.length);
    district = BdInfo.whichDistrict(BdInfo.allUpazilas[randomNumber]);
    expect(district.name, BdInfo.allUpazilas[randomNumber].district);

    // other check
    try {
      BdInfo.whichDistrict(null);
    } catch (e) {
      expect(e, invalidModel);
    }

  });
}
