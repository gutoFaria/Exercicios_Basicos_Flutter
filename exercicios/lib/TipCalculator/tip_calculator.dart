import 'package:flutter/material.dart';

class TipCalculator extends StatefulWidget {
  const TipCalculator({super.key});

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {
  int _tipPorcentagem = 0;
  int _personCounter = 1;
  double _billAmount = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(20.5),
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.purpleAccent.shade100,
                  borderRadius: BorderRadius.circular(14.0)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Total per person',
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      '\$ ${calcullateTotalPerPerson(_billAmount,_personCounter ,_tipPorcentagem)}',
                      style: const TextStyle(
                          color: Colors.purple,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                      color: Colors.blueGrey.shade100,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  TextField(
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    style: const TextStyle(color: Colors.grey),
                    decoration: const InputDecoration(
                        prefixText: "Bill Amount: ",
                        prefixIcon: Icon(Icons.attach_money)),
                    onChanged: (String value) {
                      try {
                        _billAmount = double.parse(value);
                      } catch (e) {
                        _billAmount = 0.0;
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Split',
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (_personCounter > 1) {
                                  _personCounter--;
                                } else {}
                              });
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color:
                                      const Color.fromARGB(255, 231, 203, 236)),
                              child: const Center(
                                  child: Text(
                                '-',
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              )),
                            ),
                          ),
                          Text(
                            '$_personCounter',
                            style: const TextStyle(
                                color: Colors.purple, fontSize: 17),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _personCounter++;
                              });
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color:
                                      const Color.fromARGB(255, 231, 203, 236)),
                              child: const Center(
                                  child: Text(
                                '+',
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Tip',
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          "\$ ${(calculateTip(_billAmount, _personCounter, _tipPorcentagem)).toStringAsFixed(2)}",
                          style: const TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '$_tipPorcentagem %',
                        style: const TextStyle(
                            color: Colors.purple,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      Slider(
                          min: 0,
                          max: 100,
                          activeColor: Colors.purple,
                          inactiveColor: Colors.grey,
                          divisions: 10,
                          value: _tipPorcentagem.toDouble(),
                          onChanged: (double value) {
                            setState(() {
                              _tipPorcentagem = value.round();
                            });
                          })
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  calcullateTotalPerPerson(double billAmount, int splitBy,int tipPorcentagem) {
    var totalPerPerson = (calculateTip(billAmount, splitBy,  tipPorcentagem) + billAmount) / splitBy;
    return totalPerPerson.toStringAsFixed(2);
  }

  calculateTip(double billAmount, int splitBy, int tipPerPercentagem) {
    double totalTip = 0.0;

    // ignore: unnecessary_null_comparison
    if (billAmount < 0 || billAmount.toString().isEmpty || billAmount == null) {
    } else {
      totalTip = (billAmount * tipPerPercentagem) / 100;
    }

    return totalTip;
  }
}
