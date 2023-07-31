import 'package:bmi/bottombutton.dart';
import 'package:bmi/const.dart';
import 'package:bmi/input_page.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String result;
  final String bmipoint;
  final String feedback;

  const ResultPage(
      {Key? key,
      required this.bmipoint,
      required this.feedback,
      required this.result})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculated Result"),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.bottomLeft,
            child: const Text(
              "Your Result",
              style: numstyle,
            ),
          )),
          Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                color: const Color(0xFF1D1E33),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      result,
                      style: resultnormalTxt,
                    ),
                    Text(
                      bmipoint,
                      style: resultnumstyle,
                    ),
                    Text(
                      feedback,
                      style: txtstyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )),
          ButtomButton(
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (contex) => const InputPage()));
              },
              txt: "Re Calculate")
        ],
      ),
    );
  }
}
