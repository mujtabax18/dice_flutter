import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: const Text('Dice'),
          backgroundColor: Colors.teal,
        ),
        body: const DicePage(),
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

  int updateLeftImage=1;
  int updateRightImage=1;

  void changeDiceImage(){
    setState((){
    updateLeftImage= Random().nextInt(6)+1;
    updateRightImage= Random().nextInt(6)+1;
  });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: TextButton(

              onPressed: ()
              {
                changeDiceImage();
              },
              child: Image.asset("images/dice$updateLeftImage.png"))
          ),
          Expanded(child: TextButton(
              onPressed: ()
              {
                changeDiceImage();
              },
              child: Image.asset("images/dice$updateRightImage.png"))
          ),
        ],
      ),
    );
  }
}
