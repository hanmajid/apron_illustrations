# Apron Illustrations

[![pub package](https://img.shields.io/pub/v/apron_illustrations.svg)](https://pub.dev/packages/apron_illustrations)

Unofficial Flutter package for [Apron Illustrations](https://www.figma.com/community/file/847372282968994272). Apron Illustrations is made by [Cookpad](https://www.figma.com/@cookpad) and licensed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).

## Installation

Add `apron_illustrations` dependency to your Flutter project:

```yaml
dependencies:
  apron_illustrations: ^<latest-version>
```

## Usage

### Static Illustrations

Static illustrations are PNG files, so we can only specify the dimension:

```dart
import 'package:apron_illustrations/apron_illustrations.dart';

ApronStaticIllustration(
  data: ApronStaticIllustrationData.ingredientFish,
  height: 200, // Optional
  width: 200, // Optional
)
```

### Dynamic Illustrations

Dynamic illustrations are SVG files, so we can specify dimension & custom colors:

```dart
import 'package:apron_illustrations/apron_illustrations.dart';

ApronFemalePerson(
  faceType: ApronFemaleFaceType.b,
  faceExpression: ApronFemaleFaceExpression.facedown,
  bodyType: ApronFemaleBodyType.yellow,
  bodyPose: ApronFemaleBodyPose.cookingA,
  // neckColorMapper: _customColorMapper, // Optional
  // faceColorMapper: _customColorMapper, // Optional
  // bodyColorMapper: _customColorMapper, // Optional
)
```

#### Available Dynamic Illustrations

| Type | Class |
| - | - |
| Male | `ApronMalePerson` |
| Female | `ApronFemalePerson` |
| Boy | `ApronBoyPerson` |
| Bakery | `ApronBakeryPerson` |
| Dairy Farmer | `ApronDairyFarmerPerson` |
| Farmer | `ApronFarmerPerson` |
| Fish Store | `ApronFishStorePerson` |

Most of dynamic illustrations are of people doing cooking-related works (face + neck + body). You can use built-in classes, like `ApronMalePerson`. Or you can also "compose" the people yourself by using classes like `ApronMaleFace`, `ApronMaleNeck`, `ApronMaleBody`, etc.

## Issues

For issues, file directly in the [repository](https://github.com/hanmajid/apron_illustrations/issues).

## Illustrations

<img src="https://raw.githubusercontent.com/hanmajid/apron_illustrations/refs/heads/master/apron-illustrations-static.png">

<img src="https://raw.githubusercontent.com/hanmajid/apron_illustrations/refs/heads/master/apron-illustrations-dynamic.png">

All Apron illustrations can be viewed on its  Figma file [here](https://www.figma.com/community/file/847372282968994272/apron).

## Find this library useful? ❤️

Support it by joining __[stargazers](https://github.com/hanmajid/apron_illustrations/stargazers)__ for this repository. ⭐️ <br>
Also, __[follow me](https://github.com/hanmajid)__ on GitHub for my next project! 🐱

## License

```xml
Copyright 2026 hanmajid (Muhammad Farhan Majid)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```