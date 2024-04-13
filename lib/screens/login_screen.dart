import 'package:figmaapp/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 430,
        height: 932,
        color: const Color.fromRGBO(93, 173, 226, 1),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 191,
              left: 151,
              child: Container(
                width: 128,
                height: 128,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage('assets/images/Exambankfaviconcolor1.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 776,
              left: 89,
              child: Text(
                'Doesn’t have an account?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Inter',
                  fontSize: 14,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 776,
              left: 270,
              child: Text(
                'Sign-up',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Inter',
                  fontSize: 14,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 72,
              left: 45,
              child: Text(
                'Welcome Back,\nLet\'s explore various\nknowledge here',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Inter',
                  fontSize: 22,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 356,
              left: 116,
              child: Text(
                'Login to your account',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Inter',
                  fontSize: 18,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 529,
              left: 68,
              child: Text(
                'Forgot your password ?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Inter',
                  fontSize: 12,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 392,
              left: 65,
              child: Container(
                width: 299,
                height: 60,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Text(
                        'Email',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 12,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 19,
                      left: 0,
                      child: Container(
                        width: 299,
                        height: 41,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white,
                        ),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                          ),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 458,
              left: 65,
              child: Container(
                width: 299,
                height: 61,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 20,
                      left: 0,
                      child: Container(
                        width: 299,
                        height: 41,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white,
                        ),
                        child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                          ),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Text(
                        'Password',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 12,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 266,
                      child: Container(
                        width: 22,
                        height: 22,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/Hide.png'),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 572,
              left: 65,
              child: GestureDetector(
                onTap: () {
                  // Navigasi ke halaman dashboard ketika tombol LOGIN ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PageBackgroundWidget()),
                  );
                },
                child: Container(
                  width: 299,
                  height: 41,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color.fromRGBO(41, 128, 185, 1),
                  ),
                  child: Center(
                    child: Text(
                      'LOGIN',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontSize: 18,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 627,
              left: 65,
              child: Container(
                width: 299,
                height: 126,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 140,
                      child: Text(
                        'or',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 18,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 85,
                      left: 0,
                      child: Container(
                        width: 299,
                        height: 41,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                width: 299,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 11,
                              left: 81,
                              child: Text(
                                'Login with Whatsapp',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(41, 128, 185, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 11,
                              left: 50,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/Whatsapp_36701611.png'),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 33,
                      left: 0,
                      child: Container(
                        width: 299,
                        height: 41,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                width: 299,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 12,
                              left: 81,
                              child: Text(
                                'Login with Google',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(41, 128, 185, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 12,
                              left: 50,
                              child: Container(
                                width: 19,
                                height: 19,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/Google__g__logo1.png'),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
