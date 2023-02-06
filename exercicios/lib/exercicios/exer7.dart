import 'package:flutter/material.dart';

class Exer7 extends StatefulWidget {
  const Exer7({super.key});

  @override
  State<Exer7> createState() => _Exer7State();
}

class _Exer7State extends State<Exer7> {

  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String nome = '';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Exercício 7',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          
          const SizedBox(
            height: 50,
          ),
          TextField(
            controller: _textController,
           decoration: InputDecoration(
            hintText: 'Digite seu nome',
            border: const OutlineInputBorder(),
            suffixIcon: IconButton(
              onPressed: (){
                _textController.clear();
              }, 
              icon: const Icon(Icons.clear)
              )
           ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                nome = _textController.text;
              });
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                          title: const Text('Alerta',textAlign: TextAlign.center,),
                          content: Text("Olá $nome",textAlign: TextAlign.center,),
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
            child: const Text('click'),
          ),
        ],
      ),
    );
  }
}