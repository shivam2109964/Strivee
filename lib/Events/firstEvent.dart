import 'package:flutter/material.dart';

class FirstEvent extends StatelessWidget {
  const FirstEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset('assets/rec.png')
                      ),
                    
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                    alignment: Alignment(0.3, 0),
                    height: 360,
                    width: 360,
                    child: Image.asset('assets/icon.jpg')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
