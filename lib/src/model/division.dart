class Division {
  // Name of the division (in English)
  final String name;

  // Name of the division (in Bangla)
  final String nameBangla;

  // ISO code of the division
  final String isoCode;

  // Year of establishment
  final int establish;

  // Total number of districts in the division
  final int totalDistricts;

  // Total number of upazilas (sub-districts) in the division
  final int toalUpazilas;

  // Total number of union councils in the division
  final int totalUnionCouncils;

  // Area of the division (in square kilometers)
  final double area;

  // Population of the division
  final int population;

  // Population density of the division (people per square kilometer)
  final int density;


  const Division({
    required this.name,
    required this.nameBangla,
    required this.isoCode,
    required this.establish,
    required this.totalDistricts,
    required this.toalUpazilas,
    required this.totalUnionCouncils,
    required this.area,
    required this.population,
    required this.density,
  });
}