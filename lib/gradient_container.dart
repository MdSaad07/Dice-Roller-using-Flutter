import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';
import "package:first_app/dice_roller.dart";
// import "package:first_app/styled_text.dart";

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// class GradientContainer extends StatelessWidget {
//    const GradientContainer({super.key, required this.colors}); //here the values obtained from the statelesswidget is forwarded to super class

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(colors: colors, begin: startAlignment, end: endAlignment),
//       ),
//       child: const Center(
//         child: StyledText("Hey Everyone!! Saad here"),
//       ),
//     );
//   }
// }

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.myColor, this.myColor2,
      {super.key}); //here the values obtained from the statelesswidget is forwarded to super class

  final Color myColor, myColor2;

  @override
  Widget build(context) {
    //use build(context) only if it is a statelesswidget
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          myColor,
          myColor2,
        ], begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
