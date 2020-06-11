import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'question.dart';

void main() => runApp(Quiz());

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKepper = [];

  List<Question> questionBank = [
    Question(q: "A slug's blood is green.", a: true),
    Question(
        q: "Approximately one quarter of human bones are in the feet.",
        a: true),
    Question(
        q: "The total surface area of two human lungs is approximately 70 square metres.",
        a: true),
    Question(
        q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.",
        a: true),
    Question(
        q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.",
        a: false),
    Question(q: "It is illegal to pee in the Ocean in Portugal.", a: true),
    Question(q: "You can lead a cow down stairs but not up stairs.", a: false),
    Question(q: "Google was originally called 'Backrub'.", a: true),
    Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: true),
    Question(
        q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.",
        a: false),
    Question(
        q: "No piece of square dry paper can be folded in half more than 7 times.",
        a: false),
    Question(
        q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.",
        a: true)
  ];

  var questionNo = 0;
  int totalQuestions = 12;
  int highScore = 0;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        // TODO: Progress Indicator
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Container(
            height: 30,
            child: LiquidLinearProgressIndicator(
              value: questionNo / totalQuestions, // Defaults to 0.5.
              valueColor: AlwaysStoppedAnimation(Colors.pink
                  .shade400), // Defaults to the current Theme's accentColor.
              backgroundColor: Colors.grey
                  .shade900, // Defaults to the current Theme's backgroundColor.
              borderColor: Colors.grey,
              borderWidth: 3.0,
              borderRadius: 16.0,
              direction: Axis
                  .horizontal, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Text(
              'Question ${questionNo + 1}',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ),
            Text(
              '/$totalQuestions',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white60,
              ),
            ),
            Spacer(),
            Text(
              'Score: ${score}',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ),
          ],
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionBank[questionNo].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
                side: BorderSide(color: Colors.teal.shade600),
              ),
              textColor: Colors.white,
              color: Colors.teal.shade600,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  bool correctAnswer = questionBank[questionNo].questionAnswer;

                  if (correctAnswer == true) {
                    score += 1;
                    scoreKepper.add(
                      Icon(
                        Icons.check,
                        color: Colors.teal.shade900,
                      ),
                    );
                  } else {
                    scoreKepper.add(
                      Icon(
                        Icons.close,
                        color: Colors.red.shade900,
                      ),
                    );
                  }

                  if (questionNo < 11) {
                    questionNo += 1;
                  } else {
                    updateScore(score,highScore);
                    questionNo = 0;
                    score = 0;
                    scoreKepper = [];
                  }
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
                side: BorderSide(color: Colors.red.shade600),
              ),
              color: Colors.red.shade600,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {

                setState(() {
                  bool correctAnswer = questionBank[questionNo].questionAnswer;

                  if (correctAnswer == false) {
                    score += 1;
                    scoreKepper.add(
                      Icon(
                        Icons.check,
                        color: Colors.teal.shade900,
                      ),
                    );
                  } else {
                    scoreKepper.add(
                      Icon(
                        Icons.close,
                        color: Colors.red.shade900,
                      ),
                    );
                  }

                  if (questionNo < 11) {
                    questionNo += 1;
                  } else {
                    updateScore(score,highScore);
                    questionNo = 0;
                    score = 0;
                    scoreKepper = [];
                  }
                });
              },
            ),
          ),
        ),
        Row(
          children: scoreKepper,
        )
      ],
    );
  }

  void updateScore(int score,int highScore) {
    if (score > highScore) {
      highScore = score;
      message(context, 'Congrats 🎉', 'You made a HighScore $highScore');
    } else {
      highScore = highScore;
      message(context, 'Try Hard', 'Butter luck next time buddy');
    }
  }

  void message(BuildContext context, String title, String detailMessage) {
    var alertDialog = CupertinoAlertDialog(
      title: Text(
        '$title',
        style: TextStyle(
          fontSize: 34.0,
          fontWeight: FontWeight.w800,
          color: Colors.pink,
        ),
      ),
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '$detailMessage',
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
      ),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
