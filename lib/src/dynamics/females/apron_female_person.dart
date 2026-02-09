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

class ApronFemalePerson extends StatelessWidget {
  final ApronFemaleFaceType faceType;
  final ApronFemaleFaceExpression faceExpression;
  final ApronFemaleBodyType bodyType;
  final ApronFemaleBodyPose bodyPose;
  final ColorMapper? neckColorMapper;
  final ColorMapper? faceColorMapper;
  final ColorMapper? bodyColorMapper;

  const ApronFemalePerson({
    required this.faceType,
    required this.faceExpression,
    required this.bodyType,
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
      height: 129.0,
      width: 121.63,
      child: Stack(
        children: [
          Positioned(
            left: 54.55,
            top: 54.18,
            child: ApronFemaleNeck(
              height: 9.21,
              width: 12.16,
              colorMapper: neckColorMapper,
            ),
          ),
          Positioned(
            left: 23.59,
            top: 0,
            child: ApronFemaleFace(
              type: faceType,
              expression: faceExpression,
              height: 66.34,
              width: 73.71,
              colorMapper: faceColorMapper,
            ),
          ),
          Positioned(
            left: -0.37,
            top: 10.69,
            child: ApronFemaleBody(
              type: bodyType,
              pose: bodyPose,
              height: 117.94,
              width: 121.63,
              colorMapper: bodyColorMapper,
            ),
          ),
        ],
      ),
    );
  }
}
