import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title:const Center(child: Text('Dice App')),
          titleSpacing: 1.0,
        ),
        body: DicePage(),
        ),
    ),
  );
}



class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int rightDice = 1;
  int leftDice = 1;

  @override
  Widget build(BuildContext context) {
    void inc (){
        setState(() {
                  leftDice  = Random().nextInt(5)+1;
                  rightDice = Random().nextInt(5)+1;
                }); 
    }
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {
                inc();
              },
              child: Image.asset('images/dice$leftDice.png'),
            ),
          ),),
           
          Expanded(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: (){
                inc();
              },
              child: Image.asset('images/dice$rightDice.png'),)
          )),
        ],
      ),
    );
  }
}
