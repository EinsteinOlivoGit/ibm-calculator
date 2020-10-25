import 'package:calculator_ibm/calculator_brain.dart';
import 'package:calculator_ibm/components/bottom_button.dart';
import 'package:calculator_ibm/components/icon_content.dart';
import 'package:calculator_ibm/components/reusable_card.dart';
import 'package:calculator_ibm/components/value_card.dart';
import 'package:calculator_ibm/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum EnumGender {
  Male,
  Female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  EnumGender gender;
  var height = 180;
  var weight = 100;
  var age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = EnumGender.Male;
                      });
                    },
                    child: ReusableCard(
                      bgColor: kCardColor,
                      body: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                        color: gender == EnumGender.Male
                            ? kActiveColor
                            : kInactiveColor,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = EnumGender.Female;
                      });
                    },
                    child: ReusableCard(
                      bgColor: kCardColor,
                      body: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                        color: gender == EnumGender.Female
                            ? kActiveColor
                            : kInactiveColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              bgColor: kCardColor,
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 100.0,
                    max: 300.0,
                    activeColor: kPrincipalColor,
                    inactiveColor: kInactiveColor,
                    onChanged: (value) {
                      setState(() {
                        height = value.toInt();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ValueCard(
                    label: 'WEIGHT',
                    value: weight,
                    onPressedMinus: () {
                      setState(() {
                        weight--;
                      });
                    },
                    onPressedPlus: () {
                      setState(() {
                        weight++;
                      });
                    },
                  ),
                ),
                Expanded(
                    child: ValueCard(
                  label: 'AGE',
                  value: age,
                  onPressedMinus: () {
                    setState(() {
                      age--;
                    });
                  },
                  onPressedPlus: () {
                    setState(() {
                      age++;
                    });
                  },
                )),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              CalculatorBrain calculator =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.pushNamed(context, '/results',
                  arguments: <String, String>{
                    'bmiResult': calculator.calcualteBMI(),
                    'resultText': calculator.getResult(),
                    'interpretation': calculator.getInterpretation()
                  });
            },
          ),
        ],
      ),
    );
  }
}
