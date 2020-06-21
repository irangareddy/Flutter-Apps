import 'package:BMI_Calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class Result extends StatelessWidget {

Result({@required this.result,@required this.category,@required this.message});

  final String result;
  final String category;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kLargeTextStyle,
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  bgColor: kActiveCardColor,
                  childCard: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          category,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                              color: Color(0xFF24D876)),
                        ),
                        Text(
                          result,
                          style: kNumberTextStyle.copyWith(fontSize: 100.0),
                        ),
                        Text(
                          message,
                          style: TextStyle(
                            fontSize: 22.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'RE-CALCULATE',
                      style: kMessageTextStyle,
                    ),
                  ],
                ),
                color: kSecondaryColor,
                margin: EdgeInsets.only(top: 10.0),
                height: kBottomContainerHeight,
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
