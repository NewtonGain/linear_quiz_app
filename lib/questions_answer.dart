import 'questions.dart';

class QuestionsAnswer {
  int _questionIndex = 0;
  List<Questions> _questionsList = [
    Questions(
      'she was cast as Frasier’s producer Roz but fired after just one episode and replaced by Peri Gilpin',

      true,
    ),Questions(
      'you are actually a Taurus if your birthday falls within those dates',

      false,
    ),Questions(
      'Emma Roberts is actually Julia Roberts’ niece',

      true,
    ),Questions(
      ' there are 2,691 stars as of 2020',

      true,
    ),Questions(
      'fruit flies were sent into space in a V-2 rocket in 1947',

      true
    ),Questions(
      'scientists have found their memories can actually last for months',

      false,
    ),Questions(
      'it is Tripoli',

      false,
    ),Questions(
      'Dolly is good friends with Miley’s dad, country star Billy Ray Cyrus',

      true,
    ),Questions(
      ' he has won 8, Martina Navratilova won 9',

      false,
    ),Questions(
      'it has three',

      false,
    ),
   
    
    
  ];

  void nextPage() {
    if (_questionIndex < _questionsList.length - 1) {
      _questionIndex++;
    }
  }

  bool isFinished() {
    if (_questionIndex >= _questionsList.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  String getQuestionText() {
    return _questionsList[_questionIndex].questions;
  }

  bool getQuestionAnswer() {
    return _questionsList[_questionIndex].answers;
  }

  void reset() {
    _questionIndex = 0;
  }
}