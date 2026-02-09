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

class ApronFarmerPerson extends StatelessWidget {
  final ApronFarmerFaceExpression faceExpression;
  final ApronFarmerBodyColor bodyColor;
  final ApronFarmerBodyPose bodyPose;
  final ColorMapper? neckColorMapper;
  final ColorMapper? faceColorMapper;
  final ColorMapper? bodyColorMapper;

  const ApronFarmerPerson({
    required this.faceExpression,
    required this.bodyColor,
    required this.bodyPose,
    this.neckColorMapper,
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
            left: 53.64,
            top: 53.27,
            child: ApronFemaleNeck(
              height: 9.01,
              width: 11.96,
              colorMapper: neckColorMapper,
            ),
          ),
          Positioned(
            left: 23.92,
            top: 0,
            child: ApronFarmerFace(
              expression: faceExpression,
              height: 65.23,
              width: 72.48,
              colorMapper: faceColorMapper,
            ),
          ),
          Positioned(
            left: 0.36,
            top: 11.23,
            child: ApronFarmerBody(
              color: bodyColor,
              pose: bodyPose,
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
