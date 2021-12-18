import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class QuestionsPage extends StatefulWidget {
  @override
  _QuestionsPageState createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  List<Icon> addIconList = [];

  answerCheck(bool answersCheking) {
    bool correctAnswer = questions.getQuestionAnswer();
    setState(() {
      if (questions.isFinished() == true) {
        CoolAlert.show(
          context: context,
          type: CoolAlertType.confirm,
          text: "Your Quiz is completed!",
        );

        questions.reset();
        addIconList = [];
      } else {
        if (correctAnswer == answersCheking) {
          addIconList.add(
            Icon(Icons.check, color: Colors.green),
          );
        } else {
          addIconList.add(
            Icon(Icons.close, color: Colors.red),
          );
        }
        questions.nextPage();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                questions.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: addIconList,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.green,
              child: Text(
                'True',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                answerCheck(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
                color: Colors.red,
                child: Text(
                  'False',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  answerCheck(false);
                }),
          ),
        ),
      ],
    );
  }
}
