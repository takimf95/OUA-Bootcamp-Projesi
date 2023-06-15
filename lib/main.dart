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
    return const MaterialApp(
      home: MyHomePage(),
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
    return Center(
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
      color: const Color(0xff79EE66),
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
                      color: Color(0xffe9fbe1),
                      spreadRadius: -2.0,
                      blurRadius: 12.0,
                      offset: Offset(-5, 2),
                    ),
                    BoxShadow(
                      color: Color(0xffe9fbe1),
                      spreadRadius: -2.0,
                      blurRadius: 12.0,
                      offset: Offset(5, 2),
                    ),
                  ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)
                )
              ),
              width: double.infinity,
              child: Stack(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 20),
                      const SizedBox(
                        width: 180,
                        child: Text(
                          'Neden üye olmalıyım?',
                          style: TextStyle(
                            fontFamily: "LatoTR",
                            fontSize: 24,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w900,
                            color: Color(0xff79EE66),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: screenWidth * 0.8,
                        child: const Text(
                          'Sadece kendi etik değerlerine uygun markaları profilde listeleyebilir, alışveriş alanını kişiselleştirebilirsin.',
                          style: TextStyle(
                            fontFamily: "LatoTR",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Sticks(screenWidth: screenWidth,),
                      SizedBox(
                        width: screenWidth * 0.8,
                        child: const Text(
                          'Sevdiğin markalara ait fırsat ve yeniliklerden kolayca haberdar olabilirsin.',
                          style: TextStyle(
                            fontFamily: "LatoTR",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Sticks(screenWidth: screenWidth,),
                      SizedBox(
                        width: screenWidth * 0.8,
                        child: const Text(
                          'Önerilerin hakında markalarla hıızlıca iletişime geçip daha yeşil çözümler için etki yaratabilirsin.',
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
                  Positioned(
                    top: 0,
                    right: 0,
                    child: SvgPicture.asset(
                    'assets/images/leaf.svg',
                      width: 50,
                      height: 50,
                  ),
                  )
                ],
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
          const SizedBox(
            height: 20,
          ),
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
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );

  }
}



