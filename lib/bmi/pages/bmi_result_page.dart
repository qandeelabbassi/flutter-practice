import 'package:flutter/material.dart';
import 'package:flutter_tutorial/bmi/calculator_brain.dart';
import 'package:flutter_tutorial/bmi/components/footer_button.dart';
import 'package:flutter_tutorial/bmi/components/rounded_container.dart';
import 'package:flutter_tutorial/styles.dart';

class BmiResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CalculatorBrain calculatorBrain =
        ModalRoute.of(context).settings.arguments;
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Row(children: <Widget>[
                      RoundedContainer(
                        top: 20,
                        bottom: 20,
                        left: 20,
                        right: 20,
                        minHeight: 530,
                        padding: 30,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Your Result',
                                  style: Styles.bigTitleTextStyle),
                              SizedBox(height: 50),
                              Text(calculatorBrain.getResult(),
                                  style: Styles.cardLabelTextStyle.copyWith(
                                      color: calculatorBrain.getResultColor())),
                              Text(calculatorBrain.getBMI(),
                                  style: Styles.bigNumberTextStyle
                                      .copyWith(fontSize: 80, height: 1.2)),
                              SizedBox(height: 50),
                              Text('Normal BMI range:',
                                  style: Styles.cardLabelTextStyle),
                              SizedBox(height: 5),
                              Text('18.5 - 25 kg/m\u00B2',
                                  style: Styles.cardLabelTextStyle
                                      .copyWith(color: Colors.white)),
                              SizedBox(height: 50),
                              Text(
                                calculatorBrain.getInterpretation(),
                                style: Styles.cardLabelTextStyle
                                    .copyWith(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 15),
                            ]),
                      ),
                    ]),
                  ],
              ),
            )),
            FooterButton(
              onTapCallback: () => Navigator.pop(context),
              buttonTitle: 'RE-CALCULATE BMI',
            ),
          ])),
    );
  }
}
