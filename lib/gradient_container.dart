import 'package:flutter/material.dart';
import 'package:new_project_app/dice_roller.dart';

class GradientContainer extends StatelessWidget{
  //this will accept a named argument called 'key'
  // and automatically forward it to the super class (StatelessWidget), under that same name
  // equivalent to
  // GradientContainer({key}):super(key:key);
  const GradientContainer(this.colors, {super.key});
  //if in above we want to use named arguments, we can do that but we would have to add
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: RadialGradient(colors: colors, radius: 3.5),
          backgroundBlendMode: BlendMode.multiply
      ),
      child:  const Center(
        child: DiceRoller(), //Image has multiple constructors like this one
      ),
    );
  }
}