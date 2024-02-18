import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuary = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    height: _mediaQuary.size.height * 0.25,
                    width: _mediaQuary.size.width * 1,
                    decoration: const BoxDecoration(
                      color: Color(0xFF060A16),
                    ),
                    child: null),
                Container(
                  height: _mediaQuary.size.height * 0.75,
                  width: _mediaQuary.size.width * 1,
                  decoration: const BoxDecoration(
                    color: Color(0xFF060A16),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: _mediaQuary.size.height * 0.75,
                        width: _mediaQuary.size.width * 1,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              45,
                            ),
                            topRight: Radius.circular(
                              45,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.amber,
                                radius: 60,
                                backgroundImage:
                                    AssetImage('assets/StriveLogo.jpg'),
                              ),
                            ),
                            Text(
                              "Sign In ",
                              style: GoogleFonts.aclonica(fontSize: 36),
                            ),
                            Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      fillColor: Color(0xFFF5F5F5),
                                      filled: true,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            25,
                                          ),
                                        ),
                                        borderSide: BorderSide(
                                          color: Colors.blue,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            25,
                                          ),
                                        ),
                                        borderSide: BorderSide(
                                          color: Color(
                                            0xFFF5F5F5,
                                          ),
                                        ),
                                      ),
                                      hintText: "   Email",
                                      hintStyle: TextStyle(
                                        color: Color(
                                          0xFFA5A5A5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        fillColor: Color(0xFFF5F5F5),
                                        filled: true,
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                              25,
                                            ),
                                          ),
                                          borderSide: BorderSide(
                                            color: Colors.blue,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                              25,
                                            ),
                                          ),
                                          borderSide: BorderSide(
                                            color: Color(
                                              0xFFF5F5F5,
                                            ),
                                          ),
                                        ),
                                        hintText: "   Password",
                                        hintStyle: TextStyle(
                                            color: Color(0xFFA5A5A5))),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Forget Password?",
                                        style: GoogleFonts.inter(
                                          fontSize: 12,
                                          color: const Color(
                                            0xFFA5A5A5,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(const Color(0xFF002A69)),
                                      minimumSize: MaterialStateProperty.all(
                                        Size(130, 45),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Sign In",
                                      style: GoogleFonts.inter(
                                        color: Colors.white
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 30,
                                    bottom: 30),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Don't have a account?",
                                        style: GoogleFonts.inter(
                                          fontSize: 12,
                                          color: const Color(0xFFA5A5A5),
                                        ),
                                      ),
                                      Text(
                                        " Sign up",
                                        style: GoogleFonts.inter(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: const Color(0xFF060A16)),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
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
