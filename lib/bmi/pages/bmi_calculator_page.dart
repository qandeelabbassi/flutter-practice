import 'package:flutter/material.dart';
import 'package:flutter_tutorial/bmi/calculator_brain.dart';
import 'package:flutter_tutorial/bmi/components/footer_button.dart';
import 'package:flutter_tutorial/bmi/components/rounded_icon_button.dart';
import 'package:flutter_tutorial/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/labeled_icon.dart';
import '../components/rounded_container.dart';
import '../components/rounded_square_container.dart';

enum Gender { MALE, FEMALE }

class BmiCalculatorPage extends StatefulWidget {
  @override
  _BmiCalculatorPageState createState() => _BmiCalculatorPageState();
}

class _BmiCalculatorPageState extends State<BmiCalculatorPage> {
  Gender gender = Gender.MALE;
  int height = 180; // in cm
  int weight = 70; // in Kg
  int age = 20; // in years

  updateGenderCardState(Gender gdr) {
    setState(() {
      gender = gdr;
    });
  }

  updateWeight(int change) {
    setState(() {
      if (change < -1 && weight - change >= 0)
        weight = weight - change;
      else
        weight = weight + change;
    });
  }

  updateAge(int change) {
    setState(() {
      if (change < -1 && age - change >= 0)
        age = age - change;
      else
        age = age + change;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Styles.getCustomDarkTheme(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context, false),
          ),
        ),
        body: Column(children: <Widget>[
          Expanded(
              child: Center(
                  child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(children: <Widget>[
                    RoundedSquareContainer(
                        right: 5.0,
                        active: gender == Gender.MALE,
                        onTapCallback: () => updateGenderCardState(Gender.MALE),
                        child: LabeledIcon(
                            iconData: FontAwesomeIcons.male,
                            label: 'MALE',
                            active: gender == Gender.MALE)),
                    RoundedSquareContainer(
                      left: 5.0,
                      active: gender == Gender.FEMALE,
                      onTapCallback: () => updateGenderCardState(Gender.FEMALE),
                      child: LabeledIcon(
                          iconData: FontAwesomeIcons.female,
                          label: 'FEMALE',
                          active: gender == Gender.FEMALE),
                    ),
                  ]),
                  Row(children: <Widget>[
                    RoundedContainer(
                      minHeight: 240,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('HEIGHT', style: Styles.cardLabelTextStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(height.toString(),
                                  style: Styles.bigNumberTextStyle),
                              SizedBox(width: 5),
                              Text('cm', style: Styles.bigNumberLabelTextStyle)
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: 15.0, left: 15.0, right: 15.0),
                              child: Slider(
                                value: height.toDouble(),
                                min: 120.0,
                                max: 220.0,
                                onChanged: (newHeight) {
                                  setState(() {
                                    height = newHeight.round();
                                  });
                                },
                              )),
                        ],
                      ),
                    )
                  ]),
                  Row(children: <Widget>[
                    RoundedContainer(
                      minHeight: Styles.bottomCardMinHeight,
                      right: 5.0,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('WEIGHT', style: Styles.cardLabelTextStyle),
                            Text(weight.toString(),
                                style: Styles.bigNumberTextStyle),
                            SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundedIconButton(
                                  iconData: Icons.remove,
                                  onPressedCallback: () {
                                    updateWeight(-1);
                                  },
                                ),
                                SizedBox(width: 15),
                                RoundedIconButton(
                                  iconData: Icons.add,
                                  onPressedCallback: () {
                                    updateWeight(1);
                                  },
                                )
                              ],
                            )
                          ]),
                    ),
                    RoundedContainer(
                      minHeight: Styles.bottomCardMinHeight,
                      left: 5.0,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('AGE', style: Styles.cardLabelTextStyle),
                            Text(age.toString(),
                                style: Styles.bigNumberTextStyle),
                            SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundedIconButton(
                                  iconData: Icons.remove,
                                  onPressedCallback: () {
                                    updateAge(-1);
                                  },
                                ),
                                SizedBox(width: 15),
                                RoundedIconButton(
                                  iconData: Icons.add,
                                  onPressedCallback: () {
                                    updateAge(1);
                                  },
                                )
                              ],
                            )
                          ]),
                    ),
                  ]),
                ]),
          ))),
          FooterButton(
              onTapCallback: () => Navigator.pushNamed(context, 'bmiresult',
                  arguments: CalculatorBrain(height: height, weight: weight)),
              buttonTitle: 'CALCULATE BMI')
        ]),
      ),
    );
  }
}
