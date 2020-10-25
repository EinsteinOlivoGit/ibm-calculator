import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'reusable_card.dart';
import 'round_icon_button.dart';

class ValueCard extends StatelessWidget {
  ValueCard(
      {@required this.label,
      @required this.value,
      @required this.onPressedPlus,
      @required this.onPressedMinus});

  final String label;
  final int value;
  final Function onPressedPlus;
  final Function onPressedMinus;

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      bgColor: kCardColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: kLabelTextStyle,
          ),
          Text(
            value.toString(),
            style: kNumberTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundIconButton(
                icon: FontAwesomeIcons.minus,
                onPressed: onPressedMinus,
              ),
              SizedBox(
                width: 10.0,
              ),
              RoundIconButton(
                icon: FontAwesomeIcons.plus,
                onPressed: onPressedPlus,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
