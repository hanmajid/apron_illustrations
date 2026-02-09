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

const String _femaleNeck =
    '''<svg xmlns="http://www.w3.org/2000/svg" width="13" height="10" fill="none" viewBox="0 0 13 10">
  <g clip-path="url(#a)">
    <path fill="#FFE3C6" d="M12.2 9.214 0 9.127 1.515 0h9.701l.984 9.214Z"/>
    <path fill="#FFC087" d="m11.215 0 .875 8.293L.48 6.123s.6-4.203.967-6.116L11.215 0Z"/>
  </g>
  <defs>
    <clipPath id="a">
      <path fill="#fff" d="M0 0h12.163v9.214H0z"/>
    </clipPath>
  </defs>
</svg>''';

class ApronFemaleNeck extends StatelessWidget {
  final double? width;
  final double? height;
  final ColorMapper? colorMapper;

  const ApronFemaleNeck({
    this.width,
    this.height,
    this.colorMapper,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.string(
      _femaleNeck,
      height: height,
      width: width,
      colorMapper: colorMapper,
    );
  }
}
