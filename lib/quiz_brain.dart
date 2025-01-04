import 'package:quizzler/main.dart';
import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  late int _fullmarks;

  List<Question> _questionBank = [
    Question(q: 'The sky is blue.', a: true),
    Question(q: 'The capital of France is Berlin.', a: false),
    Question(q: 'Cats are mammals.', a: true),
    Question(q: 'Water boils at 90°C.', a: false),
    Question(q: 'The sun rises in the east.', a: true),
    Question(q: 'Humans have 4 senses.', a: false),
    Question(q: 'The human body has 206 bones.', a: true),
    Question(q: 'Sharks are mammals.', a: false),
    Question(q: 'The moon is a planet.', a: false),
    Question(q: '5 + 7 equals 12.', a: true),
    Question(q: 'The Pacific Ocean is the largest ocean on Earth.', a: true),
    Question(q: 'Humans can breathe underwater without equipment.', a: false),
    Question(q: 'Earth is the third planet from the Sun.', a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber == 12) {
      print('true');
      scoreCount(_questionBank);
      return true;
    } else
      print('false');
    return false;
  }
  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.
  scoreCount(_questionBank) {
    _fullmarks = _questionBank.length;
  }

  int fullscore() {
    return _fullmarks;
  }

  reset() {
    quizBrain._questionNumber = 0;
  }
  //TODO: Step 4 Part B - Create a reset() method here that sets the questionNumber back to 0.
}
