import 'package:calculator_ibm/constants.dart';
import 'package:flutter/material.dart';

import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'YOUR RESULT',
            style: TextStyle(
              // color: Colors.white,
              fontSize: 30.0,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ReusableCard(
                bgColor: kCardColor,
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'OVERWEIGHT',
                      style: TextStyle(
                        color: Colors.red.shade400,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      '26.7',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 70.0,
                          fontWeight: FontWeight.w900),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'You have a higher than normal body weight. Try exercise more.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                      ),
                    )
                  ],
                )),
          ),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'RE-CALCULATE',
                style: kLargeButtonTextStyle,
              ),
              color: kPrincipalColor,
              width: double.infinity,
              height: 70.0,
            ),
          )
        ],
      ),
    );
  }
}
