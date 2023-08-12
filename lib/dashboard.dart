import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          color: Colors.grey,
          height: 200,
        ),
        Text('Recent', style: TextStyle(fontSize: 24)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          for(int i=0; i<10; i++)
            Container(color: Colors.blue, height: 80, width:  80)
        ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
        )
      ],)
    );
  }
}