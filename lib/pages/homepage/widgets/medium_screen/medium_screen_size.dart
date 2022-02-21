import 'package:flutter/material.dart';
import 'package:flutter_puzzle/additional/puzzle_provider.dart';
import 'package:flutter_puzzle/pages/homepage/widgets/puzzle_body/puzzle_body_layout.dart';
import 'package:provider/provider.dart';

class MediumScreenSize extends StatefulWidget {
  const MediumScreenSize({Key? key}) : super(key: key);

  @override
  _MediumScreenSizeState createState() => _MediumScreenSizeState();
}

class _MediumScreenSizeState extends State<MediumScreenSize> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PuzzleProvider>(builder: (BuildContext context, value, Widget? child) {
      return Scaffold(
        body: Center(
          child: PuzzleBodyLayout(size: Size(0, 0),)
        ),
      );
    },);
  }
}

