import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ReuseableCard({required this.colour, this.cardChild, this.onPress});
  final Color colour;
  final Widget? cardChild;
  final Function()? onPress; // or VoidCallback or void Function()?

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
