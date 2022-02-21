import 'package:flutter/material.dart';

class PuzzleProvider extends ChangeNotifier {
  int _moves = 0;
  int _completed = 15;
  final List<int> _numbers = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
  ];

  void updateNumber({required int index}) {
    _numbers[_numbers.indexOf(0)] = _numbers[index];
    _numbers[index] = 0;
    notifyListeners();
  }

  int get moves => _moves;

  int get completed => _completed;

  List<int> get numbers => _numbers;

  void shuffleNumbers() {
    _moves = 0;
    _numbers.shuffle();
    notifyListeners();
  }

  void increaseMove() {
    _moves++;
    notifyListeners();
  }
}
