import 'package:bmi/const.dart';
import 'package:bmi/roundbutton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LowerContainers extends StatelessWidget {
  final String txt1;
  final String txt2;
  final Function ontapPlus;
  final Function ontapMinus;

  const LowerContainers(
      {Key? key,
      required this.txt1,
      required this.txt2,
      required this.ontapPlus,
      required this.ontapMinus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          txt1,
          style: txtstyle,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          txt2,
          style: numstyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RoundIconButton(
                child: const Icon(FontAwesomeIcons.minus), funchon: ontapMinus),
            RoundIconButton(
              child: const Icon(FontAwesomeIcons.plus),
              funchon: ontapPlus,
            ),
          ],
        )
      ],
    );
  }
}
