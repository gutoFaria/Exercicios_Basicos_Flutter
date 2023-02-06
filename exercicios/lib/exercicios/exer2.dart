import 'package:flutter/material.dart';

class Exer2 extends StatefulWidget {
  const Exer2({super.key});

  @override
  State<Exer2> createState() => _Exer2State();
}

class _Exer2State extends State<Exer2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Exercício 2',
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
            child: const Text('Acione o Alerta'),
          ),
        ],
      ),
    );
  }
}
