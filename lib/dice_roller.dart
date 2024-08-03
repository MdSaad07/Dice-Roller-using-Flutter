import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/widgets.dart';

var randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [        
        const Text(
          "Click the button below to spin the dice",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        Image.asset(
          "assets/images/dice-$currentDiceRoll.png",
          width: 200,
        ),
        const SizedBox(height: 20),
        OutlinedButton(
          onPressed: rollDice,
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.white, width: 2),
          ),
          child: const Text(
            "Roll Dice",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: const Text('Dice Roller'),
        ),
        body: const Center(
          child: DiceRoller(),
        ),
      ),
    ),
  );
}
