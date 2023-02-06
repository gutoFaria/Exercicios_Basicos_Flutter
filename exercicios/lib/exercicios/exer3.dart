import 'package:flutter/material.dart';

class Exer3 extends StatefulWidget {
  const Exer3({super.key});

  @override
  State<Exer3> createState() => _Exer3State();
}

class _Exer3State extends State<Exer3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Exercício 3',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                          title: const Text('Alerta',textAlign: TextAlign.center,),
                          content: const Text('Olá',textAlign: TextAlign.center,),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                padding: const EdgeInsets.all(14),
                                child: const Text("ok",
                                style: TextStyle(fontSize: 20),),
                              ),
                            ),
                          ]));
            },
            style: const ButtonStyle(alignment: Alignment.center),
            child: const Text('Diga olá!'),
          ),
          const SizedBox(
            width: 50,
          ),
                    ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                          title: const Text('Alerta',textAlign: TextAlign.center,),
                          content: const Text('Até mais!',textAlign: TextAlign.center,),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                padding: const EdgeInsets.all(14),
                                child: const Text("ok",
                                style: TextStyle(fontSize: 20),),
                              ),
                            ),
                          ]));
            },
            style: const ButtonStyle(alignment: Alignment.center),
            child: const Text('Diga Até mais!'),
          ),
          
        ],
      ),
    );
  }
}