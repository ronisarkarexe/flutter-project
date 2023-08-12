import 'package:flutter/material.dart';

class Counter extends StatefulWidget{
  Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Demo")
      ),
      body: Center(child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Counter: $count'),
          ElevatedButton(onPressed: () {
            count++;
            setState(() {});
          }, child: Text('Click Me'))
      ],))
    );
  } 
}