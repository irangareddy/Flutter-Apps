import 'package:flutter/material.dart';

void main() {
  runApp(WWDC20());
}

class WWDC20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Image.asset('images/apple.png'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Divider(
                    color: Colors.grey.shade600,
                    height: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Text(
                      'Here\'s the lineup.',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 34.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'WWDC20 brings together millions of Apple developers around the world. Join us for a fully packed program to gain early access to the future of Apple platforms and engage with Apple engineers.',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 17.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    'June 22-26',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 15.0),
                  ),
                  Image.asset(
                    'images/bottom.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                    size: 22.0,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      children: <Widget>[
                        Image.asset('images/icon.jpg', width: 44, height: 44),
                        Spacer(),
                      ],
                    ),
                  ),

                  Text(
                    'Special Event Keynote and Platforms State of the Union',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'The Apple Worldwide Developers Conference kicks off with exciting reveals, inspiration, and new opportunities to continue creating the most innovative apps in the world. Join the worldwide developer community for an in-depth look at the future of Apple platforms, directly from Apple Park.',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 17.0),
                      textAlign: TextAlign.start,
                    ),
                  ),

                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
