import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  Calculator({super.key});
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _inputValue = '';
  double _result = 0.0;

  void _appendToInput(String value) {
    setState(() {
      _inputValue += value;
    });
  }

  void _clearInput() {
    setState(() {
      _inputValue = '';
    });
  }

  void _calculateResult() {
    try {
      double parsedValue = double.parse(_inputValue);
      setState(() {
        _result = parsedValue;
        _inputValue = '';
      });
    } catch (e) {
      setState(() {
        _inputValue = 'Error';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_inputValue',
              // style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CalculatorButton('7', _appendToInput),
                CalculatorButton('8', _appendToInput),
                CalculatorButton('9', _appendToInput),
                CalculatorButton('/', _appendToInput),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CalculatorButton('4', _appendToInput),
                CalculatorButton('5', _appendToInput),
                CalculatorButton('6', _appendToInput),
                CalculatorButton('*', _appendToInput),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CalculatorButton('1', _appendToInput),
                CalculatorButton('2', _appendToInput),
                CalculatorButton('3', _appendToInput),
                CalculatorButton('-', _appendToInput),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CalculatorButton('0', _appendToInput),
                CalculatorButton('.', _appendToInput),
                CalculatorButton('=', _calculateResult),
                CalculatorButton('+', _appendToInput),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Result: $_result',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  CalculatorButton(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: () => onPressed(text),
        child: Text(text, style: TextStyle(fontSize: 24)),
      ),
    );
  }
}