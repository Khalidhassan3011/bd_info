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

* Get Basic Information about Bangladesh 

```dart
void main() {
  var bdInfo = BdInfo.basicInfo;
  print(bdInfo.toString());
}

```

* Get All Divisions

```dart
void main() {
  List<Division> divisions = BdInfo.allDivisions;
  print('Divisions in Bangladesh: $divisions');
}
```

* Get All Districts

```dart
void main() {
  List<District> districts = BdInfo.allDistricts;
  print('Districts in Bangladesh: $districts');
}
```

* Get All Upazillas

```dart
void main() {
  List<Upazila> upazilas = BdInfo.allUpazilas;
  print('Upazilas in Bangladesh: $upazilas');
}
```

* Get Districts by Division

```dart
void main() {
  Division division = BdInfo.allDivisions.first;
  List<District> allDistrictsByDivision = division.allDistricts;
  print('Districts in ${division.name} Division: $allDistrictsByDivision');
}
```

* Get Upazillas by Division

```dart
void main() {
  Division division = BdInfo.allDivisions.first;
  List<Upazila> allUpazilasByDivision = division.allUpazilas;
  print('Upazilas in ${division.name} Division: $allUpazilasByDivision');
}

```

* Get Upazillas by District

```dart
void main() {
  District district = BdInfo.allDistricts.first;
  List<Upazila> allUpazilasByDistrict = district.allUpazilas;
  print('Upazilas in ${district.name} District: $allUpazilasByDistrict');
}

```

* Get Division by District

```dart
void main() {
  District district = BdInfo.allDistricts.first;
  Division whichDivision = BdInfo.whichDivision(district);
  print('${district.name} is in ${whichDivision.name} Division');
}

```

* Get District by Upazilla

```dart
void main() {
  Upazila upazila = BdInfo.allUpazilas.first;
  District whichDistrict = BdInfo.whichDistrict(upazila);
  print('${upazila.name} is in ${whichDistrict.name} District');
}

```


# Contributing
Contributions to improve and expand this package are welcome! If you have suggestions, bug reports, or feature requests, please open an issue on the [GitHub repository](https://github.com/Khalidhassan3011/bd_info)
