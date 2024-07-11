import 'package:flutter/material.dart';
import 'package:project03/Screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'project03',
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}

