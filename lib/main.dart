import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_with_counter.dart';
import 'icon_content.dart';

const double bottomContainerHeight = 80.0;
const Color cardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const textColor = Color(0xFF8D8E98);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color(0xff0A0E21),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xff0A0E21),
          )),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("BMI CALCULATOR"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReUsableCard(
                      color: cardColor,
                      child: IconContent(
                          title: "MALE", icon: FontAwesomeIcons.mars),
                    ),
                  ),
                  Expanded(
                    child: ReUsableCard(
                        color: cardColor,
                        child: IconContent(
                            icon: FontAwesomeIcons.venus, title: 'FEMALE')),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReUsableCard(color: cardColor),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReUsableCard(
                        color: cardColor,
                        child: CardWithCounter(
                          title: 'WEIGHT',
                          counter: 63,
                        )),
                  ),
                  Expanded(
                    child: ReUsableCard(
                        color: cardColor,
                        child: CardWithCounter(
                          title: "AGE",
                          counter: 30,
                        )),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              height: bottomContainerHeight,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
            ),
          ],
        ),
      ),
    );
  }
}
