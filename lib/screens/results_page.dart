import 'package:calculator_ibm/components/bottom_button.dart';
import 'package:calculator_ibm/components/reusable_card.dart';
import 'package:calculator_ibm/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ReusableCard(
                bgColor: kCardColor,
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      args['resultText'],
                      style: args['resultText'] == 'Normal'
                          ? KResultNormalTextStyle
                          : KResultTextStyle,
                    ),
                    Text(
                      args['bmiResult'],
                      style: kNumberResultTextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        args['interpretation'],
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      ),
                    )
                  ],
                )),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
