import 'package:flutter/material.dart';


class Exer1 extends StatelessWidget {
  const Exer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text('Exercício 1',
        style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration:const BoxDecoration(
              color: Color.fromARGB(255, 141, 181, 250)
            ),
            child: const Center(
              child: Text(
                "Hello, world!",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black
                ),
                textAlign: TextAlign.center,
                textDirection: null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}