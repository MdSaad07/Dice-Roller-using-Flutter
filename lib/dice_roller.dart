import "package:flutter/material.dart";
import "dart:math";

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
        Image.asset(
          "assets/images/dice-$currentDiceRoll.png",
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          child: const Text(
            "Roll Dice",
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}


// void rollDice() {
  //   var listImages = [
  //     "assets/images/dice-1.png",
  //     "assets/images/dice-2.png",
  //     "assets/images/dice-3.png",
  //     "assets/images/dice-4.png",
  //     "assets/images/dice-5.png",
  //     "assets/images/dice-6.png"
  //   ];
  //   var random = Random();
  //   var randomIndex =


  //   setState(() {});
  //   activeDiceImage = listImages[randomIndex];
  // }