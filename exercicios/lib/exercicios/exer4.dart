import 'package:flutter/material.dart';

class Exer4 extends StatefulWidget {
  const Exer4({super.key});

  @override
  State<Exer4> createState() => _Exer4State();
}

class _Exer4State extends State<Exer4> {
  //int tamanho = 30;
  int cont =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Exercício 4',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body:Column(
        children: [
          const SizedBox(height:50),
          Text('$cont',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: (cont < 0) ? Colors.red : Colors.green
            ),
          ),
          const SizedBox(height:50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    cont -=1;
                  });
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Text('-',style: TextStyle(fontSize: 15),)),
              const SizedBox(width: 20,),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    cont +=1;
                  });
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                child: const Text('+',style: TextStyle(fontSize: 15),)),
            ],
          )
        ],
      )
    );
  }
}