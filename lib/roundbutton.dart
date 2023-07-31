import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Widget child;
  final Function funchon;
  const RoundIconButton({Key? key, required this.child, required this.funchon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: child,
      constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
      onPressed: () {
        funchon();
      },
      shape: const CircleBorder(),
      fillColor: const Color(0XFF4C4F5E),
    );
  }
}
