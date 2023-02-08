import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dices'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int right_random_number = 1;
  int left_random_number = 1;
  void rollTheDice() {
    setState(() {
      right_random_number = Random().nextInt(5) + 1;
      left_random_number = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 40,
            width: 300,
            child: Divider(
              color: Colors.white70,
            ),
          ),
          Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      print(
                          'Left button $left_random_number'); //in console and for debug
                    },
                    child: Image.asset('images/dice$left_random_number.png'),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: () {
                      print(
                          'Right button $right_random_number'); //triggering and for debug
                    },
                    child: Image.asset('images/dice$right_random_number.png'),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
            width: 300,
            child: Divider(
              color: Colors.white70,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.lightBlueAccent,
              padding: const EdgeInsets.all(20.0),
              textStyle: const TextStyle(fontSize: 35),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
            ),
            onPressed: () {
              rollTheDice();
              print('You press the button'); //triggering and for debug
            },
            child: const Text('Roll!'),
          ),
          const SizedBox(
            height: 40,
            width: 300,
            child: Divider(
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }

  _DicePageState();
}
