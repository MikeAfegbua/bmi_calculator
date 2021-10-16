import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ReuseableCard({required this.colour, this.cardChild});
  final Color colour;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
