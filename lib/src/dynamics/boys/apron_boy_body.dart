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

enum ApronBoyBodyPose {
  apron,
  normalA,
  breakTheEgg,
}

const String _boyBodyApron =
    '''<svg xmlns="http://www.w3.org/2000/svg" width="100" height="110" fill="none" viewBox="0 0 100 110">
  <path fill="#FFE3C6" d="m75.258 81.806 3.674 15.112h-9.618L66.342 83.17l8.916-1.364Zm-50.236.453-3.674 15.112h9.618l2.972-13.748-8.916-1.364Z"/>
  <path fill="#A9C213" d="M45.604 60.279h9.406c14 0 20.66 10.782 22.728 23.574H23.05c2.146-12.591 8.688-23.574 22.554-23.574Z"/>
  <path fill="#FFE3C6" d="M25.023 82.259 21.35 97.37h9.618l2.972-13.748-8.916-1.364Z"/>
  <ellipse cx="29.882" cy="84.321" fill="#A9C213" rx="6.869" ry="2.347" transform="rotate(6.132 29.882 84.321)"/>
  <path fill="#FFE3C6" d="m75.64 83.17 3.293 13.748h-9.619L66.342 83.17h9.299Z"/>
  <ellipse cx="6.869" cy="2.347" fill="#A9C213" rx="6.869" ry="2.347" transform="scale(-1 1) rotate(6.132 -797.841 -682.894)"/>
  <path fill="#A9C213" d="m64.846 72.09 2.432 25.299H33.51l2.401-26.64 28.934 1.341Z"/>
  <path fill="#94AA0D" d="M35.113 70.712v6.174h29.4l-.349-6.174-2.288 3.458-7.11-11.265-.879 1.438 2.716 11.105h-13.98l2.796-10.465-.959-1.119-7.11 10.306-2.237-3.458Z"/>
  <path fill="#FFE1C4" d="M57.824 62.179c0 1.665-3.533 5.246-7.892 5.246-4.358 0-7.891-3.58-7.891-5.246 0-1.666 3.533-1.9 7.892-1.9 4.358 0 7.891.234 7.891 1.9Z"/>
  <path fill="#FFCB00" d="M34.35 76.498h30.917l4.212 20.89H30.754l3.597-20.89Z"/>
  <path fill="#FFDE53" d="m40.937 77.522 4.856-18.581-2.31.536c-1.073.246-1.991 1.11-2.5 2.328l-5.968 15.717h5.922Zm17.413-.038L53.105 59.14l2.31.518c1.074.236 2.001 1.091 3.474 4.347l5.407 13.478H58.35Z"/>
  <path fill="#FFE1C4" d="m45.346 57.6-1.202 7.31c1.11 2.109 7.075 4.21 10.513-.11l-.707-7.2h-8.604Z"/>
  <path fill="#FFBB83" d="m53.95 57.597.62 6.397-9.897-2.237.67-4.16h8.608Z"/>
</svg>''';

const String _boyBodyNormalA =
    '''<svg xmlns="http://www.w3.org/2000/svg" width="100" height="110" fill="none" viewBox="0 0 100 110">
  <path fill="#FFE3C6" d="m75.258 81.806 3.674 15.112h-9.618L66.342 83.17l8.916-1.364Zm-50.236.453-3.674 15.112h9.618l2.972-13.748-8.916-1.364Z"/>
  <path fill="#A9C213" d="M45.604 60.279h9.406c14 0 20.66 10.782 22.728 23.574H23.05c2.146-12.591 8.688-23.574 22.554-23.574Z"/>
  <path fill="#FFBB83" fill-rule="evenodd" d="M33.7 84.726c-1.022-.335-2.244-.596-3.567-.738-2.265-.244-4.314-.082-5.619.364l-.617 2.54c1.121.808 3.248 1.495 5.735 1.762 1.146.124 2.236.143 3.203.075l.865-4.003Z" clip-rule="evenodd"/>
  <ellipse cx="29.882" cy="84.321" fill="#A9C213" rx="6.869" ry="2.347" transform="rotate(6.132 29.882 84.321)"/>
  <path fill="#FFBB83" fill-rule="evenodd" d="m67.549 88.752-.828-3.83c1.095-.4 2.461-.713 3.957-.874 2.027-.218 3.88-.112 5.182.233l.705 2.9c-1.183.707-3.138 1.292-5.386 1.534-1.318.141-2.563.146-3.63.037Z" clip-rule="evenodd"/>
  <ellipse cx="6.869" cy="2.347" fill="#A9C213" rx="6.869" ry="2.347" transform="scale(-1 1) rotate(6.132 -797.841 -682.894)"/>
  <path fill="#FFE1C4" d="M57.824 62.179c0 1.665-3.533 5.246-7.892 5.246-4.358 0-7.891-3.58-7.891-5.246 0-1.666 3.533-1.9 7.892-1.9 4.358 0 7.891.234 7.891 1.9Z"/>
  <path fill="#94AA0D" d="m32.966 72.825-1.484 14.03-1.683-.177 3.167-13.853Zm34.796.05 1.483 14.03 1.684-.178-3.167-13.852Z"/>
  <path fill="#A9C213" d="m67.502 72.09 2.88 25.299H30.407l2.843-26.64 34.252 1.341Z"/>
  <path fill="#FFE1C4" d="m45.346 57.6-1.202 7.31c1.11 2.109 7.075 4.21 10.513-.11l-.707-7.2h-8.604Z"/>
  <path fill="#FFBB83" d="m53.95 57.597.62 6.397-9.897-2.237.67-4.16h8.608Z"/>
</svg>''';

const String _boyBodyBreakTheEgg =
    '''<svg xmlns="http://www.w3.org/2000/svg" width="100" height="110" fill="none" viewBox="0 0 100 110">
  <path fill="#A9C213" d="M45.604 60.279h9.406c10.272 0 18.093 5.804 21.548 13.949l-.916 1.472c.947 2.553 1.635 5.303 2.096 8.153H21.05c.483-2.835 1.514-5.66 2.633-8.224l-1.036-1.401c6.048-7.972 12.82-13.95 22.957-13.95Z"/>
  <ellipse cx="29.882" cy="84.321" fill="#A9C213" rx="6.869" ry="2.347" transform="rotate(6.132 29.882 84.321)"/>
  <ellipse cx="6.869" cy="2.347" fill="#A9C213" rx="6.869" ry="2.347" transform="scale(-1 1) rotate(6.132 -797.841 -682.894)"/>
  <path fill="#A9C213" d="m64.846 72.09 2.432 25.299H33.51l2.401-26.64 28.934 1.341Z"/>
  <path fill="#94AA0D" d="M35.113 70.712v6.174h29.4l-.349-6.174-2.288 3.458-7.11-11.265-.879 1.438 2.716 11.105h-13.98l2.796-10.465-.959-1.119-7.11 10.306-2.237-3.458Z"/>
  <path fill="#FFE1C4" d="M57.824 62.179c0 1.665-3.533 5.246-7.892 5.246-4.358 0-7.891-3.58-7.891-5.246 0-1.666 3.533-1.9 7.892-1.9 4.358 0 7.891.234 7.891 1.9Z"/>
  <path fill="#A9C213" d="M31.85 76.498h35.917l1.712 24.651H30.754l1.097-24.651Z"/>
  <path fill="#FFCB00" d="M34.35 76.498h30.917l4.212 24.651H30.754l3.597-24.651Z"/>
  <path fill="#FFDE53" d="m40.937 77.522 4.856-18.581-2.31.536c-1.073.246-1.991 1.11-2.5 2.328l-5.968 15.717h5.922Zm17.413-.038L53.105 59.14l2.31.518c1.074.236 2.001 1.091 3.474 4.347l5.407 13.478H58.35Z"/>
  <path fill="#FFE1C4" d="m45.346 57.6-1.202 7.31c1.11 2.109 7.075 4.21 10.513-.11l-.707-7.2h-8.604Z"/>
  <path fill="#FFBB83" d="m53.95 57.597.62 6.397-9.897-2.237.67-4.16h8.608ZM23.684 75.609l-3.796 6.52 6.22 4.45 3.119-4.061-2.947-3.35-2.596-3.559Z"/>
  <path fill="#F9F5EE" d="M52.385 77.272a8.83 8.83 0 0 0-4.593 6.63c-.255 1.928-.882 3.856-1.137 4.856-1 3.902 3.292 8.422 6.712 5.493 2.019-1.737 1.573-5.747.864-8.73a12.121 12.121 0 0 1 .727-7.721l1.092-2.465-3.665 1.947v-.01Z"/>
  <path fill="#FFDE53" d="M50.784 93.651c1.331 0 2.41-1.331 2.41-2.974 0-1.642-1.079-2.973-2.41-2.973-1.331 0-2.41 1.331-2.41 2.973 0 1.643 1.079 2.974 2.41 2.974Z"/>
  <path fill="#fff" d="M51.576 71.524c-.865.382-1.799 1-2.71 1.756l3.78 3.023-2.296 3.618 4.303 2.401-.256 3.367c1.162-.17 2.239-.445 3.092-.821a7.297 7.297 0 0 0 3.718-9.623 7.297 7.297 0 0 0-9.623-3.717l-.008-.004Zm-5.911 6.249 3.09-2.973-2.962-3.824c-3.51 1.713-7.141 5.042-6.596 8.084.547 3.051 5.137 4.91 9.04 5.283l1.04-3.208-3.617-3.35.005-.012Z"/>
  <path fill="#C6A288" d="M40.645 93.103a10.11 10.11 0 0 0 4.12 8.149h12.004c2.492-1.846 4.12-4.802 4.12-8.149H40.643Z"/>
  <path fill="#FFE3C6" d="m21.521 81.179 15.124-3.49 4.335-4.597 1.286-.908a1.303 1.303 0 0 1 1.715.185c.41.446.45 1.124.102 1.627l-.764 1.086-1.442 1.777 3.262 1.004a1.301 1.301 0 0 1-.255 2.555l-1.724.126 2.488 1.584c.552.35.757 1.04.5 1.636-.27.62-.973.926-1.613.712l-1.916-.636.911 1.323a1.12 1.12 0 0 1-.166 1.46c-.404.367-1.007.4-1.438.066l-3.227-2.456-13.705 5.29-3.473-8.344Z"/>
  <path fill="#FFBB83" d="m38.203 82.645 3.714 4.047-3.236-2.453-9.802 3.769 9.324-5.362Z"/>
  <ellipse cx="22.82" cy="85.472" fill="#FFE3C6" rx="3.7" ry="4.556" transform="rotate(-23.635 22.82 85.472)"/>
  <path fill="#FFBB83" d="m75.92 75.22 4.34 7.138-6.37 4.222-3.118-4.062 5.149-7.297Z"/>
  <path fill="#FFE3C6" d="m78.479 81.179-15.124-3.49-4.335-4.597-1.286-.908a1.303 1.303 0 0 0-1.715.185 1.307 1.307 0 0 0-.102 1.627l.764 1.086 1.442 1.777-3.262 1.004a1.301 1.301 0 0 0 .255 2.555l1.724.126-2.488 1.584a1.311 1.311 0 0 0-.5 1.636c.27.62.973.926 1.613.712l1.916-.636-.911 1.323a1.12 1.12 0 0 0 .166 1.46c.404.367 1.007.4 1.438.066l3.227-2.456 13.705 5.29 3.473-8.344Z"/>
  <path fill="#FFBB83" d="m61.797 82.645-3.714 4.047 3.236-2.453 9.802 3.769-9.324-5.362Z"/>
  <ellipse cx="3.7" cy="4.556" fill="#FFE3C6" rx="3.7" ry="4.556" transform="scale(-1 1) rotate(-23.635 156.628 238.297)"/>
</svg>''';

class ApronBoyBody extends StatelessWidget {
  final ApronBoyBodyPose pose;
  final double? width;
  final double? height;
  final ColorMapper? colorMapper;

  const ApronBoyBody({
    required this.pose,
    this.width,
    this.height,
    this.colorMapper,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    late String svgString;
    switch (pose) {
      case ApronBoyBodyPose.apron:
        svgString = _boyBodyApron;
      case ApronBoyBodyPose.normalA:
        svgString = _boyBodyNormalA;
      case ApronBoyBodyPose.breakTheEgg:
        svgString = _boyBodyBreakTheEgg;
    }
    return SvgPicture.string(
      svgString,
      height: height,
      width: width,
      colorMapper: colorMapper,
    );
  }
}
