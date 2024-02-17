import 'package:flutter/material.dart';
import 'package:strive/Events/Event2.dart';
import 'package:strive/Events/firstEvent.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Strive",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: EventTwo(),
      ),
    );
  }
}
