import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventTwo extends StatelessWidget {
  const EventTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Stack(
              children: <Widget>[
                Image.asset(
                  'assets/imgthee.png',
                ),
                Image.asset(
                  'assets/EventTwoIcon.png',
                ),
              ],
            ),
          ),
          Text(
            "Enjoy the Game",
            style: GoogleFonts.aclonica(
              fontSize: 20,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(
              9,
            ),
            child: Text(
              "Immerse yourself in the thrill of gaming and\n enjoy every moment of it!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'agencyfb', fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
