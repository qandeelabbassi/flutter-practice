import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/quiz/question.dart';

class QuizBrain {
  int _correctCount = 0;
  List<Icon> _scoreKeeper = [];
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true)
  ];

  int getTotalQuestions() {
    return _questionBank.length;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].question;
  }

  int nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      return _questionNumber++;
    } else {
      return -1;
    }
  }

  bool getAnswer(bool answer) {
    return _questionBank[_questionNumber].answer;
  }

  int getCorrectCount() {
    return _correctCount;
  }

  List<Widget> getScore() {
    return _scoreKeeper;
  }

  List<Widget> updateScore(bool answer) {
    if (_scoreKeeper.length != _questionBank.length) {
      if (answer == this.getAnswer(answer)) {
        _scoreKeeper.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
        _correctCount++;
      } else {
        _scoreKeeper.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
      }
    }
    return _scoreKeeper;
  }

  bool isFinished() {
    return nextQuestion() == -1;
  }

  void reset() {
    _questionNumber = 0;
    _scoreKeeper = [];
    _correctCount = 0;
  }
}
