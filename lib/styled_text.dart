import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello',
      style: TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
