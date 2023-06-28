import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int diceNumber = 1;

  void diceChanger() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/dice-$diceNumber.png'),
        ElevatedButton(
          onPressed: diceChanger,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.yellow),
            elevation: MaterialStateProperty.all(10),
          ),
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "Roll Dice",
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
              ),
            ),
          ),
        )
      ],
    );
  }
}
