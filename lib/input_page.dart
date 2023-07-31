// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:bmi/bottombutton.dart';
import 'package:bmi/calculator.dart';
import 'package:bmi/const.dart';
import 'package:bmi/lowercontainer.dart';
import 'package:bmi/resultpage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/upperlogo.dart';
import 'reuse_card.dart';

const activeColor = Color(0xFF1D1E33);
const inactiveColor = Color(0xFF111328);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveColor;
  Color femaleCardColor = inactiveColor;

  Gender selectedgender = Gender.male;

  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF0A0E21),
          title: const Text("BMI Calculator"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selectedgender = Gender.male;
                        });
                      },
                      child: ReuseableCard(
                        colour: selectedgender == Gender.male
                            ? activeColor
                            : inactiveColor,
                        child: LogoContent(FontAwesomeIcons.mars, "Male"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selectedgender = Gender.female;
                        });
                      },
                      child: ReuseableCard(
                        colour: selectedgender == Gender.female
                            ? activeColor
                            : inactiveColor,
                        child: LogoContent(FontAwesomeIcons.venus, "Female"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableCard(
                      colour: activeColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "HEIGHT",
                            style: txtstyle,
                          ),
                          Row(
                            //  crossAxisAlignment: CrossAxisAlignment.baseline,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                height.toString(),
                                style: numstyle,
                              ),
                              const Text(
                                "cm",
                                style: txtstyle,
                              )
                            ],
                          ),
                          Slider(
                              min: 120,
                              max: 220,
                              activeColor: const Color(0xFFEB1555),
                              inactiveColor: const Color(0xFF8D8E9E),
                              value: height.toDouble(),
                              onChanged: (double newvalue) {
                                setState(() {
                                  height = newvalue.round();
                                });
                              })
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableCard(
                        colour: activeColor,
                        child: LowerContainers(
                          txt1: "Weight Kg",
                          txt2: weight.toString(),
                          ontapPlus: () {
                            setState(() {
                              weight++;
                            });
                          },
                          ontapMinus: () {
                            setState(() {
                              weight--;
                            });
                          },
                        )),
                  ),
                  Expanded(
                    child: ReuseableCard(
                        colour: activeColor,
                        child: LowerContainers(
                            txt1: "Age",
                            txt2: age.toString(),
                            ontapPlus: () {
                              setState(() {
                                age++;
                              });
                            },
                            ontapMinus: () {
                              setState(() {
                                age--;
                              });
                            })),
                  ),
                ],
              ),
            ),
            ButtomButton(
                ontap: () {
                  BmiCalculator cal =
                      BmiCalculator(height: height, weight: weight);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => ResultPage(
                                bmipoint: cal.calculate(),
                                feedback: cal.getResultDetails(),
                                result: cal.getResult(),
                              )));
                },
                txt: "Calculate")
          ],
        ));
  }
}
