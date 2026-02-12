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

const double _designWidth = 120.0;
const double _designHeight = 127.27;

class ApronMalePerson extends StatelessWidget {
  final ApronMaleFaceType faceType;
  final ApronMaleFaceExpression faceExpression;
  final ApronMaleBodyType bodyType;
  final ApronMaleBodyPose bodyPose;
  final ColorMapper? neckColorMapper;
  final ColorMapper? faceColorMapper;
  final ColorMapper? bodyColorMapper;

  /// Default width: 120.0
  final double? width;

  /// Default height: 127.27
  final double? height;

  const ApronMalePerson({
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
            left: _scaleSize(50.75),
            top: _scaleSize(53.47),
            child: ApronMaleNeck(
              height: _scaleSize(10.24),
              width: _scaleSize(18.02),
              colorMapper: neckColorMapper,
            ),
          ),
          Positioned(
            left: _scaleSize(23.01),
            top: _scaleSize(-0.73),
            child: ApronMaleFace(
              type: faceType,
              expression: faceExpression,
              height: _scaleSize(66.58),
              width: _scaleSize(73.97),
              colorMapper: faceColorMapper,
            ),
          ),
          Positioned(
            left: _scaleSize(-1.03),
            top: _scaleSize(10.37),
            child: ApronMaleBody(
              type: bodyType,
              pose: bodyPose,
              height: _scaleSize(118.36),
              width: _scaleSize(122.06),
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
