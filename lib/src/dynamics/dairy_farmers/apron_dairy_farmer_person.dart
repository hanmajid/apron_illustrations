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

class ApronDairyFarmerPerson extends StatelessWidget {
  final ApronDairyFarmerFaceExpression faceExpression;
  final ApronDairyFarmerBodyColor bodyColor;
  final ColorMapper? faceColorMapper;
  final ColorMapper? bodyColorMapper;

  /// Default width: 120.0
  final double? width;

  /// Default height:127.27
  final double? height;

  const ApronDairyFarmerPerson({
    required this.faceExpression,
    required this.bodyColor,
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
            left: _scaleSize(22.47),
            top: 0.0,
            child: ApronDairyFarmerFace(
              expression: faceExpression,
              height: _scaleSize(65.23),
              width: _scaleSize(72.48),
              colorMapper: faceColorMapper,
            ),
          ),
          Positioned(
            left: 0.0,
            top: _scaleSize(10.87),
            child: ApronDairyFarmerBody(
              color: bodyColor,
              height: _scaleSize(115.97),
              width: _scaleSize(119.59),
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
