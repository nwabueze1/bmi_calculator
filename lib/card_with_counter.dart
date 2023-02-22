import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const textColor = Color(0xFF8D8E98);

class CardWithCounter extends StatelessWidget {
  final void Function()? onIncrement;
  final void Function()? onDecrement;
  final int counter;
  final String title;

  const CardWithCounter(
      {super.key,
      this.onIncrement,
      this.onDecrement,
      required this.counter,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            color: textColor,
          ),
        ),
        Text(
          '$counter',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.plus,
              ),
              onPressed: this.onIncrement,
            ),
            IconButton(
              onPressed: this.onDecrement,
              icon: FaIcon(
                FontAwesomeIcons.minus,
              ),
            ),
          ],
        )
      ],
    );
  }
}
