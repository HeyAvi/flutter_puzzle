import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_puzzle/additional/puzzle_provider.dart';
import 'package:flutter_puzzle/pages/flutter_const_layout/tile.dart';
import 'package:flutter_puzzle/pages/homepage/widgets/medium_screen/medium_screen_size.dart';
import 'package:flutter_puzzle/pages/homepage/widgets/puzzle_body/puzzle_body_layout.dart';
import 'package:provider/provider.dart';

class NormalScreenSize extends StatefulWidget {
  const NormalScreenSize({Key? key}) : super(key: key);

  @override
  _NormalScreenSizeState createState() => _NormalScreenSizeState();
}

class _NormalScreenSizeState extends State<NormalScreenSize> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Puzz Quiz',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        preferredSize: const Size.fromHeight(kToolbarHeight),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Puzzle Challenge',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  context.watch<PuzzleProvider>().moves.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
                const Text(
                  ' Moves ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.indigo,
                  ),
                ),
                const SizedBox(
                  height: 20,
                  child: VerticalDivider(
                    color: Colors.indigo,
                    thickness: 2,
                  ),
                ),
                Text(
                  '${context.watch<PuzzleProvider>().completed}', // todo get data and link completed
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
                const Text(
                  ' Tiles',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.indigo,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PuzzleBodyLayout(size: Size(0,0) )
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  context.read<PuzzleProvider>().shuffleNumbers();
                },
                icon: const Icon(Icons.loop),
                label: const Text(
                  'Shuffle',
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
