import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';
import "package:first_app/gradient_container.dart";

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Color(0xFF0D47A1),Color.fromARGB(255, 94, 143, 215)),
      ),
    ),
  );
}
