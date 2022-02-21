import 'package:flutter/material.dart';
import 'package:flutter_puzzle/pages/homepage/widgets/puzzle_body/puzzle_body_layout.dart';

class LargeScreenSize extends StatefulWidget {
  const LargeScreenSize({Key? key}) : super(key: key);

  @override
  _LargeScreenSizeState createState() => _LargeScreenSizeState();
}

class _LargeScreenSizeState extends State<LargeScreenSize> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PuzzleBodyLayout(size: Size(0,0),),
    );
  }
}
