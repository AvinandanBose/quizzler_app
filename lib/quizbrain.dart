import 'questions_new.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Questions_new> _questionBank = [
    Questions_new(q: 'Some cats are actually allergic to humans', a: true),
    Questions_new(
        q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Questions_new(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Questions_new(q: 'A slug\'s blood is green.', a: true),
    Questions_new(
        q: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', a: true),
    Questions_new(q: 'It is illegal to pee in the Ocean in Portugal.', a: true),
    Questions_new(
        q: 'No piece of square dry paper can be folded in half more than 7 times.',
        a: false),
    Questions_new(
        q: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        a: true),
    Questions_new(
        q: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        a: false),
    Questions_new(
        q: 'The total surface area of two human lungs is approximately 70 square metres.',
        a: true),
    Questions_new(q: 'Google was originally called \"Backrub\".', a: true),
    Questions_new(
        q: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        a: true),
    Questions_new(
        q: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionsText;
  }

  bool? getCorrectAnswer() {
    return _questionBank[_questionNumber].answersText;
  }

  bool isFinished() {
    if (_questionNumber == _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }



  void reset() {
    _questionNumber = 0;
  }
}