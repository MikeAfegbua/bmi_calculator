import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reuseable_card.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ResultsPage({
    required this.ansResult,
    required this.ansText,
    required this.ansAdvice,
  });
  final String ansResult;
  final String ansText;
  final String ansAdvice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(
              child: Center(
                child: Text(
                  'YOUR RESULT',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReuseableCard(
                colour: activeCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      ansResult.toUpperCase(),
                      style: resultStyle,
                    ),
                    Text(
                      ansText,
                      style: const TextStyle(
                        fontSize: 100.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ansAdvice,
                      style: const TextStyle(
                        fontSize: 22,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonTitle: 'RE-CALCULATE'),
          ],
        ));
  }
}
