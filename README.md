# BD_Info

This Dart package provides structured data about the administrative divisions of Bangladesh. It includes information such as division names, ISO codes, establishment years, demographic statistics, and geographic details. This package is designed to facilitate easy access to essential data points for developers working with geographic and demographic data related to Bangladesh.

## Features

- Get the basic information of Bangladesh
- Retrieve the list of all divisions in Bangladesh.
- Retrieve the list of all districts in Bangladesh.
- Retrieve the list of all upazilas in Bangladesh.
- Retrieve the list of districts for a given division.
- Retrieve the list of upazilas for a given division.
- Retrieve the list of upazilas for a given district.
- Check which division a specific district belongs to.
- Check which district a specific upazila belongs to.


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





# Contributing
Contributions to improve and expand this package are welcome! If you have suggestions, bug reports, or feature requests, please open an issue on the [GitHub repository](https://github.com/Khalidhassan3011/bd_info)
