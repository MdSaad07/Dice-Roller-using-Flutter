import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';
import "package:first_app/styled_text.dart";

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key}); //here the values obtained from the statelesswidget is forwarded to super class
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: const [
          Color(0xFF0D47A1),
          Color.fromARGB(255, 94, 143, 215),
        ], begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
