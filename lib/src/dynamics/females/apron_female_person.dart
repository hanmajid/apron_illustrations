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

const double _designWidth = 121.63;
const double _designHeight = 129.0;

class ApronFemalePerson extends StatelessWidget {
  final ApronFemaleFaceType faceType;
  final ApronFemaleFaceExpression faceExpression;
  final ApronFemaleBodyType bodyType;
  final ApronFemaleBodyPose bodyPose;
  final ColorMapper? neckColorMapper;
  final ColorMapper? faceColorMapper;
  final ColorMapper? bodyColorMapper;

  /// Default width: 121.63
  final double? width;

  /// Default height: 129.0
  final double? height;

  const ApronFemalePerson({
    required this.faceType,
    required this.faceExpression,
    required this.bodyType,
    required this.bodyPose,
    this.neckColorMapper,
    this.faceColorMapper,
    this.bodyColorMapper,
    this.width,
    this.height,
    super.key,
  }) : assert(
          (width == null && height == null) ||
              (width != null && height == null) ||
              (width == null && height != null),
          'width & height cannot be used simultaneously',
        );

  bool get _useHeight => height != null;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _scaleSize(_designHeight),
      width: _scaleSize(_designWidth),
      child: Stack(
        children: [
          Positioned(
            left: _scaleSize(54.55),
            top: _scaleSize(54.18),
            child: ApronFemaleNeck(
              height: _scaleSize(9.21),
              width: _scaleSize(12.16),
              colorMapper: neckColorMapper,
            ),
          ),
          Positioned(
            left: _scaleSize(23.59),
            top: 0,
            child: ApronFemaleFace(
              type: faceType,
              expression: faceExpression,
              height: _scaleSize(66.34),
              width: _scaleSize(73.71),
              colorMapper: faceColorMapper,
            ),
          ),
          Positioned(
            left: _scaleSize(-0.37),
            top: _scaleSize(10.69),
            child: ApronFemaleBody(
              type: bodyType,
              pose: bodyPose,
              height: _scaleSize(117.94),
              width: _scaleSize(121.63),
              colorMapper: bodyColorMapper,
            ),
          ),
        ],
      ),
    );
  }

  double _scaleSize(double size) {
    if (_useHeight) {
      if (height == _designHeight) {
        return size;
      }
      return size * (height! / _designHeight);
    } else {
      if (width == null || width == _designWidth) {
        return size;
      }
      return size * (width! / _designWidth);
    }
  }
}
