import 'package:flutter/material.dart';
import 'package:flutter_application_5/cal.dart';
import 'package:flutter_application_5/col.dart';
import 'package:flutter_application_5/counter.dart';
import 'package:flutter_application_5/dashboard.dart';
import 'package:flutter_application_5/immut.dart';
import 'package:flutter_application_5/login_page.dart';
import 'package:flutter_application_5/stopWatch.dart';
import 'package:flutter_application_5/textLayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Dashboard()
    );
  }
}
