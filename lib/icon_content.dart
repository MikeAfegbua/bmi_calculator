import 'package:flutter/material.dart';
import 'constants.dart';

class ReuseableColumn extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ReuseableColumn({required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 18,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
