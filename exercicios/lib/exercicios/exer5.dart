import 'package:flutter/material.dart';


class Exer5 extends StatelessWidget {
  const Exer5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Exercício 5',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration:const BoxDecoration(
                color: Colors.purple
              ),
              child:const Center(
                child: Text('1° Quadrado'),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration:const BoxDecoration(
                color: Colors.blue
              ),
              child:const Center(
                child: Text('2° Quadrado'),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration:const BoxDecoration(
                color: Colors.yellow
              ),
              child:const Center(
                child: Text('3° Quadrado'),
              ),
            ),
          ]
        ),
      ),
    );
  }
}