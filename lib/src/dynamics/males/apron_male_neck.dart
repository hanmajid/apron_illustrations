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

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String _maleNeck =
    '''<svg xmlns="http://www.w3.org/2000/svg" width="19" height="11" fill="none" viewBox="0 0 19 11">
  <g clip-path="url(#a)">
    <path fill="#FFE3C6" d="m17.114.703-15.86.13L0 10.237h18.016L17.114.703Z"/>
    <path fill="#FFCD9E" d="M17.916 8.74.644 5.497l.673-5.37L16.995 0l.92 8.74Z"/>
  </g>
  <defs>
    <clipPath id="a">
      <path fill="#fff" d="M0 0h18.016v10.238H0z"/>
    </clipPath>
  </defs>
</svg>''';

class ApronMaleNeck extends StatelessWidget {
  final double? width;
  final double? height;
  final ColorMapper? colorMapper;

  const ApronMaleNeck({
    this.width,
    this.height,
    this.colorMapper,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.string(
      _maleNeck,
      height: height,
      width: width,
      colorMapper: colorMapper,
    );
  }
}
