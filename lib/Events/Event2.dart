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
                Container(
                  child: Image.asset(
                    'assets/imgthee.png',
                  ),
                ),
                Positioned(
                  top: -370, // Middle of the first container
                  left: -350, // Middle of the first container
                  child: Container(
                    child: Transform.scale(
                        scale: 0.37 ,
                        child: Image.asset(
                        'assets/eventtwo.png',
                       
                      ),
                    ),
                  ),
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
              20,
            ),
            child: Text(
              "Immerse yourself in the thrill of gaming and\nenjoy every moment of it!",
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'agencyfb',
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
