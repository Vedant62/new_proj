import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
   const StyledText(this.text, {super.key});
  //this.text basically makes the constructor take argument same as variable name i.e. 'text'
  //it doesn't just accept this argument but also automatically maps it to a class variable of the same name
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      //this text is the only positional argument and the rest are 'named' arguments
      style: const TextStyle(
          color: Color.fromARGB(250, 6, 35, 58),
          fontSize: 50.0,
          backgroundColor: null,
          fontStyle: FontStyle.italic),
    );
  }
}
