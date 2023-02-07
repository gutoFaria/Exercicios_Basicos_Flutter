import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  const BizCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Biz card'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            _getCard(),
            _getAvatar()
          ],
        ),
      ),
    );
  }

  Container _getAvatar(){
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:const BorderRadius.all((Radius.circular(50)),
        ),
        border: Border.all(color: Colors.redAccent,width:1.2),
        image: const DecorationImage(image: NetworkImage('https://th.bing.com/th/id/OIP.NCRgrGuS4QXo3TLR9dJeFQAAAA?w=133&h=180&c=7&r=0&o=5&pid=1.7'),fit: BoxFit.cover)
      ),
    );
  }

  Container _getCard(){
    return Container(
      width: 350,
      height: 200,
      margin: const EdgeInsets.all(50.0),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(4.5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('My Name',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold)),
          const Text('acuralog@hotmail.com'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:const [
              Icon(Icons.person_outline),
              Text('99988855587')
            ],
          )
        ],
      ),
    );
  }
}