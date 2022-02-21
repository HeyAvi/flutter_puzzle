import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final String text;
  final void Function()? onClick;

  const Tile({Key? key, required this.text, required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        child: Container(
          color: Colors.indigo,
          height: 100,
          width: 100,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
