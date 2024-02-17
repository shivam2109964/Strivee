import 'package:flutter/material.dart';

class FirstEvent extends StatefulWidget {
  const FirstEvent({super.key});

  @override
  State<FirstEvent> createState() => _FirstEventState();
}

class _FirstEventState extends State<FirstEvent> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuary = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: const Color.fromARGB(
          255,
          205,
          0,
          0,
        ),
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Container(
                    height: _mediaQuary.size.height * 0.5,
                    width: _mediaQuary.size.width * 1,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(
                          85,
                        ),
                      ),
                    ),
                    child: Image.asset('assets/icon.png', alignment: Alignment.bottomCenter,) ,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Container(
                    height: _mediaQuary.size.height * 0.5,
                    width: _mediaQuary.size.width * 1,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          85,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
