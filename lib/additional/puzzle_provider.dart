import 'package:flutter/cupertino.dart';

class PuzzleProvider extends ChangeNotifier{
  int _moves = 0;
  int get moves => _moves;

  void increase(){
    _moves++;
    notifyListeners();
  }

}