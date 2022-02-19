import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_puzzle/pages/homepage/widgets/normal_screen_size.dart';
import 'package:flutter_puzzle/pages/homepage/widgets/large_screen_size.dart';
import 'package:flutter_puzzle/pages/homepage/widgets/medium_screen_size.dart';
import 'package:flutter_puzzle/pages/responsive_builder/responsive_page_builder.dart';
import 'package:provider/provider.dart';

import '../../additional/puzzle_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      context.read<PuzzleProvider>().increase();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(
      small: (context, child) => const NormalScreenSize(),
      medium: (context, child) => const MediumScreenSize(),
      large: (context, child) => const LargeScreenSize(),
    );
  }
}
