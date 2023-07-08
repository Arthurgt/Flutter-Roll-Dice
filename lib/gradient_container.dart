import 'package:flutter/material.dart';
import 'package:flutter_roll_dice/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {key}) : super(key: key);

  final MaterialColor color1;
  final MaterialColor color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startAlignment, end: endAlignment),
      ),
      child: Center(
        child: Image.asset(
          'assets/images/dice-1.png',
          width: 200,
        ),
      ),
    );
  }
}
