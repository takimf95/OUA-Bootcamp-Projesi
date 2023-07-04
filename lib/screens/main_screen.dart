import 'package:eco_markt/presentation/nav_bar_icons_icons.dart';
import 'package:eco_markt/screens/first_page.dart';
import 'package:eco_markt/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _selectedIndex = 2;

  static final List<Widget> _widgetOptions = <Widget>[
    const Center(
      child: Text(
        'Harita',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    const Center(
      child: Text(
        'Blog',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    const FirstScreen(),
    const Center(
      child: Text(
        'İhtiyaç Listesi',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    const ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.width * 0.03;
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Theme.of(context).colorScheme.primary,
              selectedIconTheme: const IconThemeData(
                color: Color(0xff000000),
              ),
              selectedItemColor: const Color(0xffE5CC4A),
              unselectedFontSize: fontSize,
              selectedFontSize: fontSize,
              items: <BottomNavigationBarItem>[
                const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.map,
                  ),
                  label: 'Harita',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(
                    NavBarIcons.blog
                  ),
                  label: 'Blog',
                ),
                BottomNavigationBarItem(
                  icon: Image(
                    image: AssetImage('assets/images/logo.png'),
                    height: constraints.maxHeight * 0.05,
                  ),
                  label: '',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.list),
                  label: 'İhtiyaç Listesi',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profil',
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            );
          },
        )
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
