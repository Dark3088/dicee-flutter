import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  List<int> randomNumber = [1, 2];

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                randomNumber = generateNumber();
              });
            },
            child: Image.asset('images/dice${randomNumber[0]}.png'),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                randomNumber = generateNumber();
              });
            },
            child: Image.asset('images/dice${randomNumber[1]}.png'),
          ),
        )
      ],
    ));
  }
}

List<int> generateNumber() =>
    List<int>.generate(2, (index) => Random().nextInt(6) + 1);
