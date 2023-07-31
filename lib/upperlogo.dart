import 'package:bmi/const.dart';
import 'package:flutter/material.dart';

class LogoContent extends StatelessWidget {
  final String txt;
  final IconData icon;

  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  LogoContent(this.icon, this.txt);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 120,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          txt,
          style: txtstyle,
        )
      ],
    );
  }
}
