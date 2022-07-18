import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String bmi;
  final String result;
  final String interpretation;

  const ResultsPage(this.bmi, this.result, this.interpretation);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
          style: kAppBarTitleTextStyle,
        ),
      ),
      body: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10.0),
              child: const Text('Your Result',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 24.0),
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ReusableCard(
                colour: kCardBackgroundColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      result.toUpperCase(),
                      style: kResultHeadingTextStyle,
                    ),
                    Text(
                      bmi,
                      style: kResultNumTextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kResultDescTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
            ),
              ),
            ),
            BottomButton(
              "Recalculate",
                  () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      )
    );
  }
}


