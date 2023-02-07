//import 'package:exercicios/exercicios/exer1.dart';
//import 'package:exercicios/exercicios/exer3.dart';
//import 'package:exercicios/exercicios/exer2.dart';
//import 'package:exercicios/exercicios/exer4.dart';
//import 'package:exercicios/exercicios/exer5.dart';
//import 'package:exercicios/exercicios/exer6.dart';
import 'package:exercicios/BizCard/biz_card.dart';
import 'package:exercicios/TipCalculator/tip_calculator.dart';
//import 'package:exercicios/exercicios/exer7.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: 
        //const Exer1(),
        //const Exer2()
        //const Exer3()
        //const Exer4()
        //const Exer5()
        //const Exer6()
        //const Exer7()
        //const BizCard()
        const TipCalculator()
    );
  }
}

