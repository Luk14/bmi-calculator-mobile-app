import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/icons/reusable_icon.dart';
import 'package:flutter/material.dart';

import 'icons/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Your Results',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableWidget(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Normal',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '20.3',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'Your BMI result is normal!',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            title: "Re-Calculate",
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
