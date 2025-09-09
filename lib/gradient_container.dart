import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_learning/dice_roller.dart';


const startAlignment = Alignment.topLeft; //compile time constant
const endAlignment = Alignment.bottomRight; //values are saved instead

class GradientContainer extends StatelessWidget {
  GradientContainer(
    this.color1,
    this.color2, {
    //instead of list this accepts 2 colors
    // as a positional argument
    super.key,
  }); //super forwards key of gradient container to stateless widget
  //named arguiments{not mandatory}

  final Color color1; //two individual colors needed
  final Color color2;


  @override //overriding method
  Widget build(context) {
    //build returns widget and it returns a container
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          //[Colors.purple, Colors.orangeAccent],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller()
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer(
//   //List<Color> colours, //positional argument = mandatory required
//   {
//     super.key,
//     required this.colours, //(now made it mandatory) making named same as positional argument
//   }); //super forwards key of gradient container to stateless widget
//   //named arguiments{not mandatory}
//
//   final List<Color> colours;
//
//   @override //overriding method
//   Widget build(context) {
//     //build returns widget and it returns a container
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colours,
//           //[Colors.purple, Colors.orangeAccent],
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: Center(child: StyledText('Hello World')),
//     );
//   }
// }
