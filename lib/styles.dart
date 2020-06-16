// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Styles {
  static const bottomCardMinHeight = 250.0;
  static const bottomButtonHeightIos = 80.0;
  static const bottomButtonHeightAndroid = 60.0;
  static const primaryColor = Color(0xFF090B22);
  static const accentColor = Color(0xFFEA1455);

  static const sliderActiveColor = Colors.white;
  static const sliderInactiveColor = Color(0xFF8D8E99);

  static const cardColor = Color(0xFF0F1327);
  static const activeCardColor = Color(0xFF1C1E33);

  static const roundedButtonColor = Color(0xFF1C1E33);

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

  static const TextStyle profileTitle = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
    fontSize: 25,
    fontFamily: 'Monoton',
    fontStyle: FontStyle.normal,
  );

  static const TextStyle profileSubTitle = TextStyle(
    color: Color.fromRGBO(128, 128, 128, 1),
    fontSize: 20,
    fontFamily: 'SourceSansPro',
    fontStyle: FontStyle.normal,
  );

  static const TextStyle content = TextStyle(
    color: Color(0xFF8D8E99),
    fontSize: 18,
    fontFamily: 'SourceSansPro',
    fontStyle: FontStyle.normal,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    color: Color.fromRGBO(255, 255, 255, 1),
    fontSize: 20,
    fontFamily: 'OpenSans',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle cardLabelTextStyle = TextStyle(
    color: Color(0xFF8D8E99),
    fontSize: 18,
    fontFamily: 'OpenSans',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle bigTitleTextStyle = TextStyle(
    fontSize: 40,
    fontFamily: 'OpenSans',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle bigNumberTextStyle = TextStyle(
    fontSize: 50,
    fontFamily: 'OpenSans',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle bigNumberLabelTextStyle = TextStyle(
    fontSize: 22,
    fontFamily: 'OpenSans',
    fontStyle: FontStyle.normal,
  );

  static const TextStyle bigSearchTextStyle = TextStyle(
      fontSize: 20,
      fontFamily: 'OpenSans',
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      color: Colors.black87);

  static const BorderSide roundedButtonSide =
      BorderSide(color: Colors.white, width: 2.0, style: BorderStyle.solid);

  static RoundedRectangleBorder borderButtonShape =
      RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0));

  static const InputDecoration searchBarDecoration = InputDecoration(
    filled: true,
    fillColor: Colors.white,
    contentPadding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0, bottom: 15.0),
    hintText: 'Enter Location Name',
    hintStyle: TextStyle(
      color: Colors.grey,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      borderSide: BorderSide.none,
    ),
  );

  static ThemeData getCustomDarkTheme(BuildContext context) {
    return ThemeData.dark().copyWith(
      primaryColor: primaryColor,
      accentColor: accentColor,
      sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: Styles.sliderActiveColor,
          inactiveTrackColor: Styles.sliderInactiveColor,
          thumbColor: Styles.accentColor,
          overlayColor: Styles.accentColor.withAlpha(50),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)),
      scaffoldBackgroundColor: primaryColor,
      appBarTheme: AppBarTheme(
        elevation: 15,
        textTheme: TextTheme(subtitle1: Styles.appbar_title_dark),
      ),
    );
  }
}
