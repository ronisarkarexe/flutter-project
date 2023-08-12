import 'dart:async';

import 'package:flutter/material.dart';


class StopWatch extends StatefulWidget{
  StopWatch({super.key});

  @override
  State<StopWatch> createState() => _StopWatchTimer();
}

class _StopWatchTimer extends State<StopWatch> {
  int seconds = 0;
  late Timer timer;
  bool isRunning=false;

  void startWatch(){
    timer = Timer.periodic(const Duration(seconds: 1), _onclick);
    setState(() {
      isRunning=true;
      ++seconds;
    });
  }

  void stopWatch(){
    timer.cancel();
    setState(() {
      isRunning=false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stop Watch"),
        backgroundColor: Color.fromARGB(255, 0, 87, 250),
      ),
      drawer: Drawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("$seconds Seconds", style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(
            height: 20,
          ),
          Row(
           mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  ElevatedButton(onPressed:isRunning ? null:startWatch,
                  style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.red),
                  foregroundColor: MaterialStatePropertyAll(Colors.black)
                  ), child: Text("Start")),
                  
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: ElevatedButton(onPressed:isRunning? stopWatch : null,
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                    ), child: Text("Stop")),
                  ),

                  ElevatedButton(onPressed:null,
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red),
                    foregroundColor: MaterialStatePropertyAll(Colors.black)
                  ), child: Text("Rested")),
                ],
              )
            ]
        )
        ],
      )
    );
  }

  void _onclick(Timer timer){
    timer = Timer.periodic(const Duration(seconds:1),_onclick);
    setState(() {
        ++seconds;
      });
  }
  @override
  void initState() {
    void dispose(){
      timer.cancel();
      super.dispose();

    }
  }
}