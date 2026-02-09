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

class ApronMalePerson extends StatelessWidget {
  final ApronMaleFaceType faceType;
  final ApronMaleFaceExpression faceExpression;
  final ApronMaleBodyType bodyType;
  final ApronMaleBodyPose bodyPose;
  final ColorMapper? neckColorMapper;
  final ColorMapper? faceColorMapper;
  final ColorMapper? bodyColorMapper;

  const ApronMalePerson({
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
      height: 127.27,
      width: 120.0,
      child: Stack(
        children: [
          Positioned(
            left: 50.75,
            top: 53.47,
            child: ApronMaleNeck(
              height: 10.24,
              width: 18.02,
              colorMapper: neckColorMapper,
            ),
          ),
          Positioned(
            left: 23.01,
            top: -0.73,
            child: ApronMaleFace(
              type: faceType,
              expression: faceExpression,
              height: 66.58,
              width: 73.97,
              colorMapper: faceColorMapper,
            ),
          ),
          Positioned(
            left: -1.03,
            top: 10.37,
            child: ApronMaleBody(
              type: bodyType,
              pose: bodyPose,
              height: 118.36,
              width: 122.06,
              colorMapper: bodyColorMapper,
            ),
          ),
        ],
      ),
    );
  }
}
