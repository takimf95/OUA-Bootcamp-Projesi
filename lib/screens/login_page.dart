import 'package:auto_size_text/auto_size_text.dart';
import 'package:eco_markt/screens/main_screen.dart';
import 'package:eco_markt/screens/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Theme.of(context).colorScheme.background,
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Theme.of(context).colorScheme.background,
                expandedHeight: screenWidth / 1.2,
                automaticallyImplyLeading: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: SvgPicture.asset(
                    'assets/images/login.svg',
                  ),
                ),
              ),
              // fill remaining but also scrollable
              SliverFillRemaining(
                hasScrollBody: false,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(204, 255, 255, 255),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)
                      )
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        'Giriş',
                        style: TextStyle(
                          fontFamily: "LatoTR",
                          fontSize: screenWidth / 10,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      // a container for the text fields height: 200, width: screenWidth * 0.8, color: Colors.white, has border 1 px black
                      SizedBox(
                        width: screenWidth * 0.8,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // a text field for email
                              SizedBox(
                                width: 250,
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: 'E-posta'
                                  ),
                                ),
                              ),
                              // a text field for password
                              SizedBox(
                                width: 250,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Şifre',
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                    disabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // a button for login on right side of the screen. On the left side, a button for forgot password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // a button for forgot password
                          SizedBox(
                            width: 150,
                            child: TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                splashFactory: NoSplash.splashFactory,
                                overlayColor: MaterialStateProperty.all(Color(0xffe9fbe1)),
                              ),
                              child: const Text(
                                'Parolamı Unuttum',
                                style: TextStyle(
                                  fontFamily: "LatoTR",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          // a button for login
                          SizedBox(
                            width: 150,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MainScreen()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff79EE66),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Text(
                                'Giriş Yap',
                                style: TextStyle(
                                  fontFamily: "LatoTR",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      // a button for register with google that has a google logo on the left side
                      SizedBox(
                        child: TextButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/google.svg',
                                semanticsLabel: 'Google Logo',
                                width: 35,
                                height: 35,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'Google hesabıyla devam et ',
                                style: TextStyle(
                                  fontFamily: "LatoTR",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff93989A),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        child: TextButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/facebook.svg',
                                semanticsLabel: 'Facebook Logo',
                                width: 35,
                                height: 35,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'Facebook hesabıyla devam et ',
                                style: TextStyle(
                                  fontFamily: "LatoTR",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff93989A),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const RegisterScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            splashFactory: NoSplash.splashFactory,
                          ),
                          child: RichText(
                            text: const TextSpan(
                              text: 'Henüz üye olmadın mı? ',
                              style: TextStyle(
                                fontFamily: "LatoTR",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff93989A),
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Kayıt ol',
                                  style: TextStyle(
                                    fontFamily: "LatoTR",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              )
            ]
          )
        ),
      ),
    );
  }
}
