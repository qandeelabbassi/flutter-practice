import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/bitcoin-ticker/model/coin.dart';
import 'package:flutter_tutorial/styles.dart';

class Picker extends StatefulWidget {
  final Function callback;

  Picker({this.callback});

  @override
  _PickerState createState() => _PickerState();
}

class _PickerState extends State<Picker> {
  String selectedCurrency = currenciesList[0];

  List<DropdownMenuItem<String>> getItemsAndroid() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String item in currenciesList) {
      dropDownItems.add(DropdownMenuItem(
          child: Text(item, style: Styles.buttonTextStyle), value: item));
    }
    return dropDownItems;
  }

  List<Text> getItemsIOS() {
    List<Text> dropDownItems = [];
    for (String item in currenciesList) {
      dropDownItems.add(Text(item, style: Styles.buttonTextStyle));
    }
    return dropDownItems;
  }

  void handleOnChange() {
    widget.callback(selectedCurrency);
  }

  @override
  Widget build(BuildContext context) {
    bool isAndroid = Platform.isAndroid;
    if (isAndroid) {
      return DropdownButton<String>(
        value: selectedCurrency,
        items: getItemsAndroid(),
        onChanged: (String value) {
          setState(() {
            selectedCurrency = value;
          });
          handleOnChange();
        },
      );
    } else {
      return CupertinoPicker(
        itemExtent: 32.0,
        children: getItemsIOS(),
        onSelectedItemChanged: (value) {
          setState(() {
            selectedCurrency = currenciesList[value];
          });
          handleOnChange();
        },
      );
    }
  }
}
