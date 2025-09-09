import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(
    this.text, {

    //this.text takes the argument provided and shares it to final string text
    //this is positional ie mandatory
    super.key,
  }); //this constructor forwards the key to parent class ie the stateless widget
  //super.key transfers key to statesless widget, its a named argument ie not mandatory

  final String text;

  @override
  Widget build(context) {
    // context for position in widget tree
    // builds a widget that returns a text
    return Text(text, style: TextStyle(color: Colors.white, fontSize: 28.0));
  }
}
