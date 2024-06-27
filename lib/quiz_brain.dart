import 'questions.dart';

class QuizBrain {

  int _questionNumber = 0; 

   List<Questions> _questionBank = [
    Questions('Ey, Schildkröten können durch Wände gehen, oder was?', false),
    Questions('Ratten können lachen, wenn man sie kitzelt, glaubste?', true),
    Questions('Ein Bär pfeift, bevor er angreift, echt jetzt?', false),
    Questions('Ein Nashorn benutzt seinen Horn als Handy, Digga?', false),
    Questions('Katzen haben neun Leben, oder was?', false),
    Questions('Flamingos sind rosa, weil sie so viel Shrimps futtern, kein Witz?', true),
    Questions('Haie kriegen nie Krebs, wussteste das?', true),
    Questions('Elefanten haben Angst vor Mäusen, ehrlich?', true),
    Questions('Ein Zebra ist eigentlich weiß mit schwarzen Streifen, korrekt?', false),
    Questions('Insekten haben blaues Blut, oder?', false),
  ];

  void nextQuestion(){
    if (_questionNumber < _questionBank.length - 1){
      _questionNumber++;
    }
  }

  String getquestiontext() {
    return _questionBank[_questionNumber].questionsText;
  }


  bool getCorrectAnswer(){
    return _questionBank[_questionNumber].questionsAnswer;
  }

  bool isFinished() {
    return _questionNumber >= _questionBank.length - 1;
  }

  void reset() {
        _questionNumber = 0;
  }
}