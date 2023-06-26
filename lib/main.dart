import 'package:auto_size_text/auto_size_text.dart';
import 'package:eco_markt/screens/login_page.dart';
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
    // create a color scheme
    const ColorScheme colorScheme = ColorScheme(
      primary: Color(0xff79EE66),
      secondary: Color(0xffC4AFF0),
      surface: Color(0xffF0FF42),
      tertiary: Color(0xff8BC349),
      background: Color(0xff006241),
      error: Color(0xff79EE66),
      onPrimary: Color(0xff1F1800),
      onSecondary: Color(0xffffffff),
      onSurface: Color(0xff79EE66),
      onBackground: Color(0xff79EE66),
      onError: Color(0xff79EE66),
      brightness: Brightness.light,
    );
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "LatoTR",
        primarySwatch: Colors.green,
        colorScheme: colorScheme,
      ),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
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
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;


  final List<Widget> _pages = [
    const Page1(),
    const Page2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemCount: _pages.length,
              itemBuilder: (BuildContext context, int index) {
                return _pages[index % _pages.length];
              },
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      for (int i = 0; i < _pages.length; i++)
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: i == _currentPage
                                ? Colors.black
                                : const Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Image.asset(
              'assets/images/logo.png',
              width: screenWidth * 0.5,
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: screenWidth * 0.8,
            height: screenHeight * 0.1,
            child: const AutoSizeText(
              'Seçimlerin Dünya’yı Değiştirir!',
              style: TextStyle(
                fontFamily: "LatoTR",
                fontSize: 36,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: screenWidth * 0.8,
            child: const Text(
              'Yeşil bir gelecek için sorumlu alışveriş, sürdürülebilir yaşam önerileri, etik markalar ve tüm fırsatlar için üye ol!',
              style: TextStyle(
                fontFamily: "LatoTR",
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),

        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Center(
              child: SvgPicture.asset(
                'assets/images/bro.svg',
                semanticsLabel: 'Ecomarkt Logo',
              ),
            )
          ),
          Expanded(
            flex: 6,
            child: Container(
              decoration: const BoxDecoration(
                // color: Color(0xffe9fbe1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                    ),
                    BoxShadow(
                      color: Color(0xfff2effb),
                      spreadRadius: -2.0,
                      blurRadius: 12.0,
                      offset: Offset(-10, 4),
                    ),
                    BoxShadow(
                      color: Color(0xfff2effb),
                      spreadRadius: -2.0,
                      blurRadius: 12.0,
                      offset: Offset(10, 4),
                    ),
                  ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)
                )
              ),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Column(
                  children: [
                    const Expanded(child: SizedBox()),
                    SizedBox(
                      width: screenWidth * 0.5,
                      child: Text(
                        'Neden üye olmalıyım?',
                        style: TextStyle(
                          fontFamily: "LatoTR",
                          fontSize: screenWidth / 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w900,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    SizedBox(
                      width: screenWidth * 0.8,
                      child: Text(
                        'Sadece kendi etik değerlerine uygun markaları profilde listeleyebilir, alışveriş alanını kişiselleştirebilirsin.',
                        style: TextStyle(
                          fontFamily: "LatoTR",
                          fontSize: screenWidth / 25,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    Sticks(screenWidth: screenWidth,),
                    const Expanded(child: SizedBox()),
                    SizedBox(
                      width: screenWidth * 0.8,
                      child: Text(
                        'Sevdiğin markalara ait fırsat ve yeniliklerden kolayca haberdar olabilirsin.',
                        style: TextStyle(
                          fontFamily: "LatoTR",
                          fontSize: screenWidth / 25,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    Sticks(screenWidth: screenWidth,),
                    const Expanded(child: SizedBox()),
                    SizedBox(
                      width: screenWidth * 0.8,
                      child: Text(
                        'Önerilerin hakında markalarla hızlıca iletişime geçip daha yeşil çözümler için etki yaratabilirsin.',
                        style: TextStyle(
                          fontFamily: "LatoTR",
                          fontSize: screenWidth / 25,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const LoginScreen()),
                            );
                          },
                          icon: SvgPicture.asset(
                            'assets/images/right.svg',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ),
        ],
      ),
    );
  }
}

class Sticks extends StatelessWidget {
  Sticks({super.key, required this.screenWidth});
  double screenWidth;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: screenWidth * 0.6,
              height: 1,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: screenWidth * 0.6,
              height: 1,
              color: Colors.black,
            ),
          ),

        ],
      ),
    );

  }
}



