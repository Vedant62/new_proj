import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    //const keyword avoids making of a duplicate memory object increasing runtime efficiency
    home: Scaffold(
      body: GradientContainer([ Colors.purple, Colors.indigo, Colors.blue, Colors.green]),
    ),
  ));
}
