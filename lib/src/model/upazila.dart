/// [Upazila] class represents information about an upazila (sub-district) in Bangladesh,
/// including its name in English and Bangla, the division it belongs to, and the district it belongs to.

class Upazila {

  // Name of the upazila (in English)
  final String name;

  // Name of the upazila (in Bnagla)
  final String nameBangla;

  //// Division to which the upazila belongs
  final String division;

  // District to which the upazila belongs
  final String district;

  // Constructor for Upazila class.

  const Upazila({
    required this.name,
    required this.nameBangla,
    required this.division,
    required this.district,
  });
}
