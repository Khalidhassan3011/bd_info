part of '../bd_info.dart';

class _BangladeshInfo {

  /// Basic information fields
  // Full name of Bangladesh in English
  String fullName;

  // Full name of Bangladesh in Bangla
  String fullNameBangla;

  // Capital city in English
  String capital;

  // Capital city in Bangla
  String capitalBangla;

  // ISO code for Bangladesh
  String isoCode;

  // Date of establishment
  String establish;

  // Official language in English
  String language;

  // Official language in Bangla
  String languageBangla;


  /// Religious information
  // Primary religion in Bangladesh
  _Religion religion;

  // List of all religions with percentages
  List<_Religion> allReligions;


  /// Currency and timezone information
  // Currency code (ISO 4217)
  String currency;

  // Currency name in Bangla
  String currencyBangla;

  // Currency symbol
  String currencySymbol;


  // Time zone information
  String timeZone;

  // International dialing code
  String phoneCode;


  /// Demographic and geographic statistics
  // Total number of administrative divisions
  int totalDivisions;

  // Total number of districts
  int totalDistricts;

  // Total number of upazilas (sub-districts)
  int toalUpazilas;

  // Total number of union councils
  int totalUnion;

  // Total area in square kilometers
  double area;

  // Total population
  int population;

  // Population density
  int density;


  _BangladeshInfo({
    this.fullName = "People's Republic of Bangladesh",
    this.fullNameBangla = "গণপ্রজাতন্ত্রী বাংলাদেশ",
    this.capital = "Dhaka",
    this.capitalBangla = "ঢাকা",
    this.isoCode = "BD",
    this.establish = "16/12/1971",
    this.language = "Bangla",
    this.languageBangla = "বাংলা",
    _Religion? religion,
    List<_Religion>? allReligions,
    this.currency = "BDT",
    this.currencyBangla = "টাকা",
    this.currencySymbol = "৳",
    this.timeZone = "UTC +6",
    this.phoneCode = "+880",
    this.totalDivisions = 8,
    this.totalDistricts = 64,
    this.toalUpazilas = 494,
    this.totalUnion = 4546,
    this.area = 147569.06,
    this.population = 165158616,
    this.density = 1119,
  })  : religion = religion ??
            _Religion(
              name: "Islam",
              nameBangla: "",
              percent: 91.04,
            ),
        allReligions = (allReligions ?? []).isNotEmpty
            ? allReligions!
            : [
                _Religion(name: "Islam", nameBangla: "ইসলাম", percent: 91.04),
                _Religion(name: "Hindu", nameBangla: "হিন্দু", percent: 7.95),
                _Religion(name: "Buddho", nameBangla: "বৌদ্ধ", percent: 0.61),
                _Religion(name: "Kristian", nameBangla: "খ্রিস্টান", percent: 0.30),
                _Religion(name: "Others", nameBangla: "অন্যান্য", percent: 0.12),
              ];


  // Override of toString method to provide a formatted string
  // representation of the object
  @override
  String toString() {

    String formatAllReligion = """
    
    """;

    for (final (index, religion) in allReligions.indexed) {
      formatAllReligion +=
      """
      Religion ($index) -> {
              name: ${religion.name}
              name Bangla: ${religion.nameBangla}
              percent: ${religion.percent}
            }
      """;
    }

    return """
    Full Name -> $fullName
    Full Name Bangla -> $fullNameBangla 
    
    Capital -> $capital 
    Capital Bangla -> $capitalBangla 
    
    Iso Code -> $isoCode 
    
    Establish -> $establish 
    
    Language -> $language 
    Language Bangla -> $languageBangla 
    
    Religion -> {
        name: ${religion.name}
        name Bangla: ${religion.nameBangla}
        percent: ${religion.percent}
    }
    
    All Religions -> $formatAllReligion
    
    Currency -> $currency
    Currency Bangla -> $currencyBangla
    Currency Symbol -> $currencySymbol
    
    Time Zone -> $timeZone
    
    Phone Code -> $phoneCode
    
    Total Districts -> $totalDistricts
    Total Upazilas -> $toalUpazilas
    Total Union Councils -> $totalUnion
    Area -> $area
    Population -> $population
    Density -> $density
    """;
  }
}

// This class represents information about a religion,
// including its name, name in Bangla, and percentage in a population.
class _Religion {
  String name;
  String nameBangla;
  double percent;

  _Religion({
    required this.name,
    required this.nameBangla,
    required this.percent,
  });
}
