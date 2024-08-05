// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftImageNum = 1;
  int rightImageNum = 1;

  void changingImagenumber() {
    setState(() {
      leftImageNum = Random().nextInt(6) + 1;
      rightImageNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 10,
        title: const Text(
          'Dice',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  changingImagenumber();
                },
                child: Image.asset('images/dice$leftImageNum.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  changingImagenumber();
                },
                child: Image.asset('images/dice$rightImageNum.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
