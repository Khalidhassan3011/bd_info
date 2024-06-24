# BdInfo

`BdInfo` is a Dart package that provides information about the divisions, districts, and upazilas of Bangladesh. It is designed to be simple and easy to use, allowing developers to quickly access and utilize the information in their applications.


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

Many more features are being developed such as thanas under different districts and divisions.


## Installation

Add `bd_info` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  bd_info: ^1.0.0
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
Contributions to improve and expand this package are welcome! If you have suggestions, bug reports, or feature requests, please open an [issue](https://github.com/Khalidhassan3011/bd_info/issues/new). Pull request are also welcome.

## Contributors 

<a href="https://github.com/Khalidhassan3011/bd_info/graphs/contributors"><img src="https://avatars.githubusercontent.com/u/126274619?s=40&u=616ca9dc589c272ad73af9d4f67b41c364fa876c&v=4" /></a>

Contributions of any kind are welcome!
