import 'package:flutter/material.dart';

class Exer6 extends StatelessWidget {
  const Exer6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text(
            'Exercício 6',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SizedBox(
          width: 100,
          height: 600,
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 1,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[200],
               
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[300],
                
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[400],
                
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[500],
                
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[600],
                
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[200],
                
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[300],
                
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[400],
                
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[500],
                
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[600],
                
              ),
            ],
          ),
        ));
  }
}
