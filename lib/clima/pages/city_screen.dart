import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/clima/utilities/constants.dart';
import 'package:flutter_tutorial/styles.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/weather_search_bg.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Container(
            color: Colors.black.withOpacity(0.1),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: ButtonTheme(
                      minWidth: 0,
                      height: 0,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        materialTapTargetSize: MaterialTapTargetSize.padded,
                        padding: EdgeInsets.all(16),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      style: Styles.bigSearchTextStyle,
                      decoration: Styles.searchBarDecoration,
                      onChanged: (value) {
                        cityName = value;
                      },
                    ),
                  ),
                  OutlineButton(
                    onPressed: () {
                      Navigator.pop(context, cityName);
                    },
                    child: Text(
                      'Get Weather',
                      style: kButtonTextStyle,
                    ),
                    padding: EdgeInsets.all(10.0),
                    borderSide: Styles.roundedButtonSide,
                    shape: Styles.borderButtonShape,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
