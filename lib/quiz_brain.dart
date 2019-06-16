import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Normalmente, uma pessoa tem de 4 a 6 litros de sangue ', true),
    Question('É de Descartes a frase, \"Penso logo existo\"', true),
    Question('O chuveiro elétrico foi inventado no Brasil.', true),
    Question('O menor país do mundo é o Vaticano e o maior é a China.', false),
    Question('João Goulart ex-presidente do Brasil ficou conhecido como Jango.',
        true),
    Question('Dom quixote é segundo livro mais vendido no Mundo.', true),
    Question('O pi tem milhares de casas decimais.', false),
    Question('A tabela periódica possui 108 elementos.', false),
    Question(
        'O som mais alto produzido por um animal é 188 decibeis. Esse animal é o Elefante Africano.',
        false),
    Question(
        'Se fosse possível esticar todos os alvéolos pulmonares de uma pessoa adulta, daria cerca de 70 metros de comprimento.',
        true),
    Question('É impossível lamber o cotovelo.', true),
    Question('Você tentou lamber o cotovelo na pergunta anterior', true),
    Question(
        'Se não exercitarmos o que aprendemos, esquecemos 25% em seis horas, 33% em 24 horas e 90% em seis meses.',
        true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank.length - 1);
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    isFinished();
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
