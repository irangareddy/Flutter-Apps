import 'package:flutter/material.dart';
import 'constants.dart';




class IconContent extends StatelessWidget {

  IconContent({@required this.iconType,@required this.title});

  final IconData iconType;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconType,
          size: 80.0,
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(title,style: kLabelTextStyle ),
      ],
    );
  }
}