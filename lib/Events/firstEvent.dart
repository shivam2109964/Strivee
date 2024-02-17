import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:strive/OnBoard/OnBoard.dart';

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
      backgroundColor: const Color(0xFF060A16),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF060A16),
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
                  child: Image.asset(
                    'assets/icon.png',
                    alignment: Alignment.bottomCenter,
                  ),
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
                    color: Color(0xFF060A16),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        85,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      70,
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "S T R I V E",
                          style: GoogleFonts.aclonica(
                            color: Colors.white,
                            fontSize: 35,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "Join Strive today\nand commence your journey\ntowards financial growth.",
                            style: GoogleFonts.actor(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: SizedBox(
                            height: 45.30,
                            width: 140,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  const Color(
                                    0xFF002A69,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => OnBoard(),
                                  ),
                                );
                              },
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "Let's Start ",
                                    style: GoogleFonts.actor(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                  const Icon(Icons.arrow_right_alt_sharp,
                                      color: Colors.white, size: 25),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
