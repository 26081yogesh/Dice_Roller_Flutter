import 'package:flutter/material.dart';
import 'package:dice_roller/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          color1: Colors.purple,
          color2: Colors.deepPurple,
        ),
      ),
    ),
  );
}
