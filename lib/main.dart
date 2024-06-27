import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  List<Widget> scoreKeeper = [];
  int questionNumber = 0;

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswers = quizBrain.getCorrectAnswer();

    setState(() {
      if (quizBrain.isFinished()) {
        // Show alert when the quiz is finished
         Alert(
          style: const AlertStyle(
            backgroundColor: Colors.amber,
            animationType: AnimationType.fromBottom,
            alertAlignment: AlignmentDirectional.center,

          ),
          context: context,
          title: "Quiz FertigYa",
          desc: "Das Ende ist nah",
          buttons: [
             DialogButton(
              color: Colors.black,
              child:  const Align(
                alignment: Alignment.center,
                child: Text(
                    "Neu",
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: 20),
                    ),
              )
              ,
              onPressed: () {
                Navigator.pop(context);
                setState(() {
                  quizBrain.reset();
                  scoreKeeper.clear();
                  questionNumber = 0;
                });
              },
              width: 120,
            )
          ],
        ).show();
      } else {
        if (userPickedAnswer == correctAnswers) {
          scoreKeeper.add(
           const Align(
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.check,
                color: Colors.green,
                size: 40, // Increased icon size
              ),
            ),
          );
        } else {
          scoreKeeper.add(
           const Align(
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.close,
                color: Colors.red,
                size: 40, // Increased icon size
              ),
            ),
          );
        }
        quizBrain.nextQuestion();
        questionNumber++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Container(
                padding: EdgeInsets.all(100.0), // Padding inside the box
                decoration: BoxDecoration(
                  color: Colors.grey, // Background color of the box behind the text
                  borderRadius: BorderRadius.circular(10.0), // Rounded corners
                ),
                child: Text(
                  quizBrain.getquestiontext(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.white, width: 5),
                backgroundColor: Colors.green,
              ),
              child: const Text(
                'Wallaya',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
              onPressed: () {
                checkAnswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.white, width: 5),
                backgroundColor: Colors.red,
              ),
              child: const Text(
                'AwasDigge',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkAnswer(false);
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}
