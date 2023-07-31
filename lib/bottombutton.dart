import 'package:bmi/const.dart';
import 'package:flutter/material.dart';

class ButtomButton extends StatelessWidget {
  final Function ontap;
  final String txt;

  const ButtomButton({Key? key, required this.ontap, required this.txt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ontap();
      },
      child: Container(
        color: Colors.pink,
        height: 80,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              txt,
              style: numstyle,
            )
          ],
        ),
      ),
    );
  }
}
