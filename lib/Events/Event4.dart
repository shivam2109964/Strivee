import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventFour extends StatelessWidget {
  const EventFour({Key? key}) : super(key: key);

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
                  'assets/referlo.png',
                ),
                Image.asset(
                  'assets/refer.png',
                ),
              ],
            ),
          ),
          Text(
            "Refer and Earn",
            style: GoogleFonts.aclonica(
              fontSize: 20,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(
              20,
            ),
            child: Text(
              "Refer friends and earn up to 700 rupees\nwith every successful referral!",
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
