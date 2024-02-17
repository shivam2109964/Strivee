import 'package:flutter/material.dart';

class FirstEvent extends StatefulWidget {
  const FirstEvent({super.key});

  @override
  State<FirstEvent> createState() => _FirstEventState();
}

class _FirstEventState extends State<FirstEvent> {
  late double heigth, width;

  @override
  Widget build(BuildContext context) {
    heigth = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: heigth * .5,
                decoration: const BoxDecoration(color: Colors.black),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: heigth * .5,
                decoration: const BoxDecoration(color: Colors.red),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
