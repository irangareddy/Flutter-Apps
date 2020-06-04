import 'package:flutter/material.dart';

void main() {
  runApp(MyProfile());
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                color: Colors.pinkAccent,
                width: 100,
              ),
              // SizedBox(
              //   width: 8,
              // ),
              Container(
                width: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      color: Colors.purpleAccent,
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      color: Colors.blueAccent,
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.greenAccent,
                width: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
