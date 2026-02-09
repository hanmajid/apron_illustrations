// Copyright 2026 hanmajid (Muhammad Farhan Majid)
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:apron_illustrations/apron_illustrations.dart';
import 'package:flutter/material.dart';

class ApronStaticIllustration extends StatelessWidget {
  final ApronStaticIllustrationData data;
  final double? width;
  final double? height;

  const ApronStaticIllustration({
    required this.data,
    this.width,
    this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      data.assetName,
      package: 'apron_illustrations',
      width: width,
      height: height,
    );
  }
}
