import 'dart:math';

class Game {
  static final int MIN_VALUE = 0;
  static final int MAX_VALUE = 100;

  int _targetValue = 0;
  int _points = 0;
  int _score = 0;
  int _rounds = 0;
  final List<Map<String, dynamic>> _numeros = [];

  int get score => _score;
  int get rounds => _rounds;
  int get targetValue => _targetValue;
  int get points => _points;
  List<Map<String, dynamic>> get numeros => _numeros;

  Game() {
    _targetValue = Random().nextInt(MAX_VALUE + 1 - MIN_VALUE) + MIN_VALUE;
  }

  void calculatePoints(double sliderValue) {
    int sliderValueInt = sliderValue.round().toInt();
    int difference = (_targetValue - sliderValueInt).abs();
    _points = (MAX_VALUE - difference);
    _score += _points;
    _rounds++;
  }

  void reset() {
    _targetValue = Random().nextInt(MAX_VALUE + 1 - MIN_VALUE) + MIN_VALUE;
    _points = 0;
  }

  void restartGame() {
    _targetValue = Random().nextInt(MAX_VALUE + 1 - MIN_VALUE) + MIN_VALUE;
    _points = 0;
    _score = 0;
    _rounds = 0;
  }

  void bestScores(int score) {
    Map<String, dynamic> scoreData = {
      'score': score,
      'timestamp': DateTime.now(),
    };

    if (_numeros.length < 5) {
      _numeros.add(scoreData);
    } else {
      int menor = _numeros.map((e) => e['score'] as int).reduce(min);

      if (score > menor) {
        int indiceMenor = _numeros.indexWhere((element) => element['score'] == menor);
        _numeros[indiceMenor] = scoreData;
      }
    }
  }
}
