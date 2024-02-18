import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:strive/Events/Event2.dart';
import 'package:strive/Events/Event3.dart';
import 'package:strive/Events/Event4.dart';
import 'package:strive/SignIN&UP/SignIn.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});
  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  PageController _controller = PageController();
  //Keep Track of Last page
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView(
            controller: _controller,
            onPageChanged: (index) => setState(
              () {
                onLastPage = (index == 2);
              },
            ),
            children: const [
              EventTwo(),
              EventThree(),
              EventFour(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SmoothPageIndicator(controller: _controller, count: 3),
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: onLastPage
                            ? GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SignIn(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Done",
                                  style: GoogleFonts.alata(fontSize: 20),
                                  textAlign: TextAlign.end,
                                ),
                              )
                            : GestureDetector(
                                onTap: () {
                                  _controller.nextPage(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.easeIn);
                                },
                                child: Text(
                                  "Next",
                                  style: GoogleFonts.alata(fontSize: 20),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
