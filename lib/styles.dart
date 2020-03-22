// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const TextStyle appbar_title_dark = TextStyle(
    color: Color(0xFF616161),
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle appbar_title_light = TextStyle(
    color: Color(0xFFFFFFFF),
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle title = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
    fontSize: 25,
    fontFamily: 'Monoton',
    fontStyle: FontStyle.normal,
  );
  static const TextStyle subTitle = TextStyle(
    color: Color.fromRGBO(128, 128, 128, 1),
    fontSize: 20,
    fontFamily: 'SourceSansPro',
    fontStyle: FontStyle.normal,
  );
  static const TextStyle content = TextStyle(
    color: Color.fromRGBO(128, 128, 128, 1),
    fontSize: 18,
    fontFamily: 'SourceSansPro',
    fontStyle: FontStyle.normal,
  );
}
