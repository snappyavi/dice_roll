import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final randomiser =
    Random(); //to avoid rebuild by createState State place it here
//for more efficieny

class DiceRoller extends StatefulWidget {
  //diceroller class inherits fucntion from StatefulWidget

  const DiceRoller({super.key});

  //constructor function that shares the key with its superclass or parent ie stateful widget

  //overrides it
  @override
  //createState returns State that takes in Diceroller
  State<DiceRoller> createState() {
    //createState returns private function DiceRollerState()
    return _DiceRollerState();
  }
}

//private function DiceRollerState inherits function from State of DiceRoller
class _DiceRollerState extends State<DiceRoller> {
  //constructor function is given by default if not mentioned

  //variable
  //  var activeDice = "assets/images/dice-1.png";
  var currentDiceRoll = 2;

  void rollDice() {
    //function for onPressed activity
    //  var diceRoll =  Random().nextInt(6) + 1; //generates random number b/w 1 to 5

    setState(() {
      currentDiceRoll = randomiser.nextInt(6) + 1;

      //setstate uses anonymous function : (){}
      //signals flutter to re execute build method and change the activeDice Image
      // activeDice = "assets/images/dice-$currentDiceRoll.png";
    });
  }

  @override
  //same as stateless build method returns a Widget
  //takes in context for getting to know its position in flutter widget tree
  Widget build(context) {
    //returns a column
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
        SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
