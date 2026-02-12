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

const double _designWidth = 100.0;
const double _designHeight = 110.0;

class ApronBoyPerson extends StatelessWidget {
  final ApronBoyFaceExpression faceExpression;
  final ApronBoyBodyPose bodyPose;
  final ColorMapper? faceColorMapper;
  final ColorMapper? bodyColorMapper;

  /// Default width: 100.0
  final double? width;

  /// Default height: 110.0
  final double? height;

  const ApronBoyPerson({
    required this.faceExpression,
    required this.bodyPose,
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
            left: _scaleSize(16.0),
            top: _scaleSize(6.5),
            child: ApronBoyFace(
              expression: faceExpression,
              height: _scaleSize(62.0),
              width: _scaleSize(68.0),
              colorMapper: faceColorMapper,
            ),
          ),
          Positioned(
            left: 0.0,
            top: 0.0,
            child: ApronBoyBody(
              pose: bodyPose,
              height: _scaleSize(110.0),
              width: _scaleSize(100.0),
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
