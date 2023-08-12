import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.green),
      foregroundDecoration: const BoxDecoration(
        backgroundBlendMode: BlendMode.colorDodge,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.grey, Colors.pink, Colors.red]
        ),
      ),
      child: Center(
        child: Transform.rotate(
          angle: 180/ 3.14,
          child:  Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 27, 177),
              boxShadow: [
                BoxShadow(
                  color: Colors.green,
                  spreadRadius: 20,
                  blurRadius: 15,
                  offset: Offset.fromDirection(20.0, 0.0)
                )
              ],
              borderRadius: const BorderRadius.all(
                Radius.circular(30)
              )
            ),
            child: Padding(padding: EdgeInsets.all(30),
            child: _buildCircle(),
            )
          ),
        )
      )
    );
  }
  Widget _buildCircle(){
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(colors: [Colors.amberAccent, Colors.blueAccent], center: Alignment(1, 0))
      ),
    );
  }
}