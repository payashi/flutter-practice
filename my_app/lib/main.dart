import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Demo'),
        ),
        body: Column(
          children: [
            titleSection,
            _buttonSection(context),
          ],
        ),
      ),
    );
  }

  Widget _buttonSection(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        _buildButton('CALL', Icons.call, color),
        _buildButton('ROUTE', Icons.near_me, color),
        _buildButton2('SHARE', Icons.share, color),
      ],
    );
  }

  Widget _buildButton(String label, IconData icon, Color color) {
    return Column(children: [
      Icon(icon, color: color),
      Container(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          label,
          style: TextStyle(color: color, fontWeight: FontWeight.w400),
        ),
      )
    ]);
  }

  Widget _buildButton2(String label, IconData icon, Color color) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(color: color, fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32.0),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: const Text(
                "Oeschinen Lake Campground",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "Kandersteg, Switzerland",
              style: TextStyle(color: Colors.grey[500]),
            ),
          ],
        ),
      ),
      Icon(
        Icons.star,
        color: Colors.red[400],
      ),
      const Text("41"),
    ],
  ),
);
