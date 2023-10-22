import 'dart:math';
import 'package:flutter/material.dart';
final randomizer = Random();
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  //createState returns a value of type State<DiceRoller>
  //and something of this type will be returned by another class; i.e.

  // State is an inbuilt type in flutter which like a list is a generic value type
  // and <> should show which type of State will be managed here,
  // which here is the State of the DiceRoller class

  //Generics means parameterized types. The idea is to allow type (Integer, String, … etc., and user-defined types) to be a parameter to methods, classes, and interfaces.
  //Using Generics, it is possible to create classes that work with different data types.

  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var currentDiceRoll = 2;
  void rollDice(){

    // tells flutter to re-execute the build function of the state in which you call setState
    // if it finds a demand of an updated UI, it then goes all the way up and rebuilds wherever needed
    setState(() { // where one wants to update in UI
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });

  }
  @override
  Widget build(context) {
    return Column( //column by default takes entire vertical space, hence not centered, for that,
      mainAxisSize: MainAxisSize.min,

      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200,),
        const SizedBox(height: 20,),
        ElevatedButton(onPressed: rollDice, style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(15) ,backgroundColor: const Color.fromARGB(0, 0, 0, 0), elevation: 2,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),), child: const Text("ROLL DICE", style: TextStyle(fontSize: 25.0),),)
      ],
    );
  }

}