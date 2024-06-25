/// [District] class represents information about a district in Bangladesh,
/// including its name in English and Bangla, the division it belongs to,
/// the total number of upazilas (sub-districts), total villages, and its area.

class District {

  // Name of the district in English
  final String name;

  // Name of the district in Bangla
  final String nameBangla;

  // Division to which the district belongs
  final String division;

  // Total number of upazilas (sub-districts) in the district
  final int totalUpazilas;

  // Total number of villages in the district
  final int totalVillage;

  // Area of the district in square kilometers
  final double area;


  // Constructor for District class.
  const District({
    required this.name,
    required this.nameBangla,
    required this.division,
    required this.totalUpazilas,
    required this.totalVillage,
    required this.area,
  });
}
