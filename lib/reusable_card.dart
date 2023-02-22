import 'package:flutter/widgets.dart';

class ReUsableCard extends StatelessWidget {
  final Color color;
  final Widget? child;
  ReUsableCard({super.key, required this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: this.child,
    );
  }
}
