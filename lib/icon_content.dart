import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  final IconData? icon;
  final String title;
  const IconContent({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          this.icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          this.title,
          style: TextStyle(
            color: Color(0xFF8D8E98),
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
