import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  DiceRoller({key}) : super(key: key);

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceRoll = 2;

  rollDice() {
    setState(() {
      diceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$diceRoll.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          child: Text('Roll Dice'),
          style: TextButton.styleFrom(
            shadowColor: Colors.yellowAccent,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
        )
      ],
    );
  }
}
