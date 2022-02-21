import 'package:flutter/material.dart';
import 'package:flutter_puzzle/additional/puzzle_provider.dart';
import 'package:flutter_puzzle/pages/flutter_const_layout/tile.dart';
import 'package:provider/provider.dart';

class PuzzleBodyLayout extends StatefulWidget {
  final Size size;

  const PuzzleBodyLayout({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  _PuzzleBodyLayoutState createState() => _PuzzleBodyLayoutState();
}

class _PuzzleBodyLayoutState extends State<PuzzleBodyLayout> {
  Size? size;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemCount: context.watch<PuzzleProvider>().numbers.length,
        itemBuilder: (BuildContext context, int index) {
          return (context.watch<PuzzleProvider>().numbers[index] != 0)
              ? Tile(
                  text: '${context.watch<PuzzleProvider>().numbers[index]}',
                  onClick: () {
                    setState(() {
                      context.read<PuzzleProvider>().updateNumber(index: index);
                      context.read<PuzzleProvider>().increaseMove();
                    });
                  },
                )
              : const SizedBox.shrink();
        });
  }
}
