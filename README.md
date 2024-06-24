# BD_Info

This Dart package provides structured data about the administrative divisions of Bangladesh. It includes information such as division names, ISO codes, establishment years, demographic statistics, and geographic details. This package is designed to facilitate easy access to essential data points for developers working with geographic and demographic data related to Bangladesh.

## Features

| Feature                                   | Android |  iOS  |
| :---------------------------------------- | :-----: | :---: |
| Get basic information about Bangladesh    |   ✅    |  ✅   |
| Retrieve all divisions                    |   ✅    |  ✅   |
| Get all districts                         |   ✅    |  ✅   |
| Retrieve all upazilas                     |   ✅    |  ✅   |
| Get districts by division                 |   ✅    |  ✅   |
| Retrive upazilas by division              |   ✅    |  ✅   |
| Get upazilas by district                  |   ✅    |  ✅   |
| Retrieve division by district             |   ✅    |  ✅   |
| Get district by upazila                   |   ✅    |  ✅   |


## Installation

Add `bd_info` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  bd_info: ^1.0.0
```

Then, run the generator.

```sh
# dart
dart pub run build_runner build

# flutter	
flutter pub run build_runner build
```

## Usage

Import the package in your Dart code:

```dart
import 'package:bd_info/bd_info.dart';
```
## Examples

```dart
void main() {

  //Get BasicInfo About Bangladesh
  var bdInfo = BdInfo.basicInfo;
  print(bdInfo.toString());

  //Get All Divisions
  List<Division> divisions = BdInfo.allDivisions;

  //Get All Districts
  List<District> districts = BdInfo.allDistricts;

  //Get All Upazillas
  List<Upazila> upazilas = BdInfo.allUpazilas;

  //Get Districts by Division
  Division division = BdInfo.allDivisions.first;
  List<District> allDistrictsByDivision = division.allDistricts;

  //Get Upazillas by Division
  List<Upazila> allUpazilasByDivision = division.allUpazilas;

  //Get Upazillas by District
  District district = BdInfo.allDistricts.first;
  List<Upazila> allUpazilasByDistrict = district.allUpazilas;

  //Know which division given district belongs to
  Division whichDivision = BdInfo.whichDivision(district);

  //know which District given Upazilla belongs to
  District whichDistrict = BdInfo.whichDistrict(upazila);
}
```

# Bugs or Requests
Contributions to improve and expand this package are welcome! If you have suggestions, bug reports, or feature requests, please open an [issue](https://github.com/Khalidhassan3011/bd_info).Pull request are also welcome.

## Contributors 

<a href="https://github.com/Khalidhassan3011/bd_info/graphs/contributors"><img src="https://avatars.githubusercontent.com/u/126274619?width=120&height=120&style=border-radius:50%" /></a>



Contributions of any kind welcome!
