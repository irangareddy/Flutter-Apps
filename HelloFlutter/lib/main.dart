import 'package:flutter/material.dart';

// The main() is the starting point for all our Flutter Apps.
void main() {
  runApp(
    // Material App confrims Material Design Style Created by Google
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Hello Flutter"),
          backgroundColor: Color.fromRGBO(53, 185, 244, 1.0),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Center(
                child: Image(
                  image: AssetImage('images/flutter.png'),
                ),
              ),
              Center(
                child: Column(
                  
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text('Fast development Flutter hot reload helps you quickly and easily experiment, build UIs, add features, and fix bugs faster. Experience sub-second reload times without losing state on emulators, simulators, and hardware.',style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
