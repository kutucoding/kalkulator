import 'package:flutter/material.dart';
import 'package:kalkulator/model/math_fun.dart';

class KalkulatorScreen extends StatefulWidget {
  const KalkulatorScreen({super.key});

  @override
  State<KalkulatorScreen> createState() => _KalkulatorScreenState();
}

class _KalkulatorScreenState extends State<KalkulatorScreen> {
  final kalkulator Kalkulator = kalkulator();
  String DisplayResult = '0';

  void UpdateUI(String newResult) {
    setState(() {
      DisplayResult = newResult;
    });
  }

  Widget buildButton(String text, Color color) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.all(4),
      child: ElevatedButton(
          onPressed: () => Kalkulator.buttonPrassed(text, UpdateUI),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 2.0),
            backgroundColor: color,
          ),
          child: Text(
            text,
            style: TextStyle(fontSize: 24, color: Colors.white),
          )),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(16.0),
              child: Text(
                DisplayResult,
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Divider(),
          Column(
            children: [
              Row(
                children: [
                  buildButton('7', Colors.grey),
                  buildButton('8', Colors.grey),
                  buildButton('9', Colors.grey),
                  buildButton('/', Colors.green),
                ],
              ),
              Row(
                children: [
                  buildButton('4', Colors.grey),
                  buildButton('5', Colors.grey),
                  buildButton('6', Colors.grey),
                  buildButton('*', Colors.green),
                ],
              ),
              Row(
                children: [
                  buildButton('1', Colors.grey),
                  buildButton('2', Colors.grey),
                  buildButton('3', Colors.grey),
                  buildButton('-', Colors.green),
                ],
              ),
              Row(
                children: [
                  buildButton('C', Colors.red),
                  buildButton('0', Colors.grey),
                  buildButton('=', Colors.blue),
                  buildButton('+', Colors.green),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
