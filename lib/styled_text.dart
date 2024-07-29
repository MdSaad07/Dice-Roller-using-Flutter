import "package:flutter/material.dart";

class StyledText extends StatelessWidget {
  const StyledText(
      this.text, //here we are using const because in 8th line it is final string text which means the value will be unchanged
      {super.key}); //if instead of this.text only text is used, the constructor and the function are not linke
  //which will lead to an error displaying that there is text in not yet defined

  final String text; //indicates identifier text is immutable string type

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
