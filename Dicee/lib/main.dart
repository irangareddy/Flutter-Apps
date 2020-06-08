import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo.shade600,
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var random = Random.secure();

  var leftDiceNumber = 3;

  var rightDiceNumber = 6;

  var player1Score = 0;

  var player2Score = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: Text(
            'Dicee',
            style: TextStyle(
              fontSize: 44.0,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ),
        Spacer(),
        Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      leftDiceNumber = random.nextInt(6) + 1;
                      if (leftDiceNumber == 6) {
                        player1Score = player1Score + 1;
                      }
                    });
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      rightDiceNumber = random.nextInt(6) + 1;
                      if (rightDiceNumber == 6) {
                        player2Score = player2Score + 1;
                      }
                    });
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(bottom: 60.0),
          child: Column(
            children: <Widget>[
              Text(
                'Scores',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Player 1: $player1Score',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Player 2: $player2Score',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              RaisedButton(
                elevation: 6.0,
                color: Colors.indigo.shade50,
                onPressed: () {
                  setState(() {
                    if (player1Score > player2Score) {
                      message(context,1);
                    } else {
                      message(context, 2);
                    }
                    player1Score = 0;
                    player2Score = 0;
                    
                  });
                },
                child: const Text(
                  'Game Over',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.indigo,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );


  }

      void message(BuildContext context,int player) {

      var alertDialog = CupertinoAlertDialog(

        title: Text('Dicee'),
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Player $player Won the Game'),
        ),
        
      );

      showDialog(
        context: context,
        builder: (BuildContext context){
          return alertDialog;
        }
      );

    }
}
