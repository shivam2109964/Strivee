import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventThree extends StatelessWidget {
  const EventThree({Key? key}) : super(key: key);

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
                Image.asset('assets/eventthreeimgg.png'),
                Image.asset('assets/eventThreeimg.png'),
              ],
            ),
          ),
          Text(
            "Your Pocket Money",
            style: GoogleFonts.aclonica(fontSize: 20),
          ),
          const Padding(
            padding: EdgeInsets.all(
              20,
            ),
            child: Text(
              "All the games in this app are extremely\nenjoyable,\nand you can earn real money while playing\nthem.\nIt's an easy way to generate pocket money for yourself. ",
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'agencyfb', fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
