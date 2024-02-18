import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:strive/SignIN&UP/SignIn.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                                radius: 50,
                                backgroundImage:
                                    AssetImage('assets/StriveLogo.jpg'),
                              ),
                            ),
                            Text(
                              "Sign Up ",
                              style: GoogleFonts.aclonica(fontSize: 36),
                            ),
                            Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: TextField(
                                    decoration: 
                                  
                                    InputDecoration(
                                    
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
                                      hintText: "   Your name",
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
                                        hintText: "   Email",
                                        hintStyle: TextStyle(
                                            color: Color(0xFFA5A5A5))),
                                  ),
                                ),
                                const Padding(
                                  padding: const EdgeInsets.all(8.0),
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
                                  padding: const EdgeInsets.only(top: 30),
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              const Color(0xFF002A69)),
                                      minimumSize: MaterialStateProperty.all(
                                        Size(130, 45),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Sign Up",
                                      style: GoogleFonts.inter(
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30, bottom: 30),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Already have an account?",
                                        style: GoogleFonts.inter(
                                          fontSize: 12,
                                          color: const Color(0xFFA5A5A5),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const SignIn(),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          " Sign In",
                                          style: GoogleFonts.inter(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xFF060A16)),
                                        ),
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
