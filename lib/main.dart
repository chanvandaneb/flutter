
import 'package:finalproject/onbordingscreen.dart';
import 'package:finalproject/splashpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final Project',
      theme: ThemeData(


        primarySwatch: Colors.blue,
      ),
      home: SplashPage()
    );
  }
}
