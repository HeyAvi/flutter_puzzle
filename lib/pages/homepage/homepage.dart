import 'package:flutter/material.dart';
import 'package:flutter_puzzle/pages/homepage/widgets/normal_screen_size.dart';
import 'package:flutter_puzzle/pages/homepage/widgets/large_screen_size.dart';
import 'package:flutter_puzzle/pages/homepage/widgets/medium_screen_size.dart';
import 'package:flutter_puzzle/pages/responsive_builder/responsive_page_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(
      small: (context, child) => const NormalScreenSize(),
      medium: (context, child) => const MediumScreenSize(),
      large: (context, child) => const LargeScreenSize(),
    );
  }
}
