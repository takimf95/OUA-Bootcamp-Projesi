import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: SvgPicture.asset(
                    'assets/images/Ecomarkt_Logo.svg',
                    semanticsLabel: 'Ecomarkt Logo',
                  ),
                ),
                const SizedBox(height: 30),
                const SizedBox(
                  width: 180,
                  child: Text(
                    'Seçimlerin Dünya’yı Değiştirir!',
                    style: TextStyle(
                      fontFamily: "LatoTR",
                      fontSize: 36,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 50),
                Container(
                  width: screenWidth * 0.8,
                  child: const Text(
                    'Yeşil bir gelecek için sorumlu alışveriş, sürdürülebilir yaşam önerileri, etik markalar ve tüm fırsatlar için üye ol!',
                    style: TextStyle(
                      fontFamily: "LatoTR",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

              ],
            ),
          ),
      ),
    );
  }
}
