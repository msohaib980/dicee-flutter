import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Diceee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;
  String totalNum;

  @override
  Widget build(BuildContext context) {
    void randomNuber() {
      setState(() {
        rightDiceNumber = Random().nextInt(6) + 1;
        leftDiceNumber = Random().nextInt(6) + 1;
      });
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  randomNuber();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    randomNuber();
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png')),
            ),
          ],
        ),
      ),
    );
  }
}
