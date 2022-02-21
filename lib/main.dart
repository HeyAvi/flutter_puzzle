import 'package:flutter/material.dart';
import 'package:flutter_puzzle/additional/puzzle_provider.dart';
import 'package:provider/provider.dart';
import 'additional/additional.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (create) => PuzzleProvider()),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Puzz Quiz',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      routes: navigationMap,
    );
  }
}
