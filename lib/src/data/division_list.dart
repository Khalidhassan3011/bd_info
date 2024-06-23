part of '../bd_info.dart';

/// [_DivisionList] provides a static list of predefined Division objects
/// representing major administrative divisions of Bangladesh.
///
/// Purpose:
/// This class encapsulates a static list [divisions] of Division objects,
/// each representing a major administrative division of Bangladesh.
///
/// Functionality:
/// The divisions list provides predefined data about each division, including its
/// name (in English and Bangla),
/// ISO code,
/// year of establishment,
/// number of districts,
/// sub-districts (upazilas),
/// union councils,
/// area in square kilometers,
/// population,
/// and population density.
///
/// Usage:
/// Developers can access this static list to retrieve detailed
/// information about Bangladesh's divisions without needing to recreate
/// or fetch this data from an external source, making it efficient for
/// applications requiring static divisional data.

class _DivisionList {
  static List<Division> get divisions => const [
        Division(
          name: dhaka,
          nameBangla: "ঢাকা",
          isoCode: "BD-C",
          establish: 1829,
          totalDistricts: 13,
          toalUpazilas: 89,
          totalUnion: 885,
          area: 20593.74,
          population: 44215107,
          density: 2147,
        ),
        Division(
          name: chittagong,
          nameBangla: "চট্টগ্রাম",
          isoCode: "BD-B",
          establish: 1829,
          totalDistricts: 11,
          toalUpazilas: 103,
          totalUnion: 949,
          area: 33908.55,
          population: 33202326,
          density: 979,
        ),
        Division(
          name: rajshahi,
          nameBangla: "রাজশাহী",
          isoCode: "BD-E",
          establish: 1829,
          totalDistricts: 8,
          toalUpazilas: 67,
          totalUnion: 565,
          area: 18153.08,
          population: 20353119,
          density: 1121,
        ),
        Division(
          name: khulna,
          nameBangla: "খুলনা",
          isoCode: "BD-D",
          establish: 1960,
          totalDistricts: 10,
          toalUpazilas: 59,
          totalUnion: 571,
          area: 22284.22,
          population: 17416645,
          density: 782,
        ),
        Division(
          name: barisal,
          nameBangla: "বরিশাল",
          isoCode: "BD-A",
          establish: 1993,
          totalDistricts: 6,
          toalUpazilas: 42,
          totalUnion: 352,
          area: 13225.20,
          population: 9100102,
          density: 688,
        ),
        Division(
          name: sylhet,
          nameBangla: "সিলেট",
          isoCode: "BD-G",
          establish: 1996,
          totalDistricts: 4,
          toalUpazilas: 41,
          totalUnion: 338,
          area: 12635.22,
          population: 11034863,
          density: 873,
        ),
        Division(
          name: rangpur,
          nameBangla: "রংপুর",
          isoCode: "BD-F",
          establish: 2010,
          totalDistricts: 8,
          toalUpazilas: 58,
          totalUnion: 535,
          area: 16184.99,
          population: 17610956,
          density: 1088,
        ),
        Division(
          name: mymensingh,
          nameBangla: "ময়মনসিংহ",
          isoCode: "BD-H",
          establish: 2015,
          totalDistricts: 4,
          toalUpazilas: 35,
          totalUnion: 351,
          area: 10584.06,
          population: 12225498,
          density: 1155,
        ),
      ];
}
