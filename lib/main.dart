import 'package:flutter/material.dart';
import '/question_page.dart';
import '/questions_answer.dart';

QuestionsAnswer questions = QuestionsAnswer();

void main() => runApp(LinearQuiz());

class LinearQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Linear Quiz'),
          centerTitle: true,
        ),
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: QuestionsPage(),
            ),
          ),
        ),
      ),
    );
  }
}
