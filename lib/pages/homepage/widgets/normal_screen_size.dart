import 'package:flutter/material.dart';

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
              children: const [
                Text(
                  '2',
                  // todo get data and link
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
                Text(
                  ' Moves ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.indigo,
                  ),
                ),
                SizedBox(
                  height: 20,
                  child: VerticalDivider(
                    color: Colors.indigo,
                    thickness: 2,
                  ),
                ),
                Text(
                  ' 15', // todo get data and link
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
                Text(
                  ' Tiles',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.indigo,
                  ),
                )
              ],
            ),
            GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              shrinkWrap: true,
              children: [
                Card(
                    child: Container(
                  color: Colors.indigo,
                  height: 100,
                  width: 100,
                )),
                Card(
                    child: Container(
                  color: Colors.indigo,
                  height: 100,
                  width: 100,
                )),
                Card(
                    child: Container(
                  color: Colors.indigo,
                  height: 100,
                  width: 100,
                )),
                Card(
                    child: Container(
                  color: Colors.indigo,
                  height: 100,
                  width: 100,
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
