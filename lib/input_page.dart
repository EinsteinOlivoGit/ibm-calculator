import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const Color cardColor = Color(0xFF212831);
const Color inactiveColor = Colors.white;
const Color activeColor = Color(0xFFe77ac0);

enum EnumGender {
  Male,
  Female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = inactiveColor;
  Color femaleColor = inactiveColor;

  void updateColor(EnumGender gender) {
    if (gender == EnumGender.Male) {
      if (maleColor == inactiveColor) {
        maleColor = activeColor;
      } else {
        maleColor = inactiveColor;
      }
      femaleColor = inactiveColor;
    }

    if (gender == EnumGender.Female) {
      if (femaleColor == inactiveColor) {
        femaleColor = activeColor;
      } else {
        femaleColor = inactiveColor;
      }
      maleColor = inactiveColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(EnumGender.Male);
                      });
                    },
                    child: ReusableCard(
                      bgColor: cardColor,
                      body: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                        color: maleColor,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(EnumGender.Female);
                      });
                    },
                    child: ReusableCard(
                      bgColor: cardColor,
                      body: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                        color: femaleColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(bgColor: cardColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(bgColor: cardColor),
                ),
                Expanded(
                  child: ReusableCard(bgColor: cardColor),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.pink,
            width: double.infinity,
            height: 70.0,
          )
        ],
      ),
    );
  }
}
