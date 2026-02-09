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

import 'package:apron_illustrations/src/src.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ApronDairyFarmerPerson extends StatelessWidget {
  final ApronDairyFarmerFaceExpression faceExpression;
  final ApronDairyFarmerBodyColor bodyColor;
  final ColorMapper? faceColorMapper;
  final ColorMapper? bodyColorMapper;

  const ApronDairyFarmerPerson({
    required this.faceExpression,
    required this.bodyColor,
    this.faceColorMapper,
    this.bodyColorMapper,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // TODO Customize width and/or height.
    return SizedBox(
      height: 127.27,
      width: 120.0,
      child: Stack(
        children: [
          Positioned(
            left: 22.47,
            top: 0.0,
            child: ApronDairyFarmerFace(
              expression: faceExpression,
              height: 65.23,
              width: 72.48,
              colorMapper: faceColorMapper,
            ),
          ),
          Positioned(
            left: 0.0,
            top: 10.87,
            child: ApronDairyFarmerBody(
              color: bodyColor,
              height: 115.97,
              width: 119.59,
              colorMapper: bodyColorMapper,
            ),
          ),
        ],
      ),
    );
  }
}
