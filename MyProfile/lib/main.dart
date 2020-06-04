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
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10.0),
          color: Colors.green,
          child: Text('Ranga Reddy',style: TextStyle(
                      fontWeight: FontWeight.bold,
                                  fontSize: 34.0,
                                  color: Colors.white,
                                ),),
        ),
              ),
      ),
    ),
  );
  }
}