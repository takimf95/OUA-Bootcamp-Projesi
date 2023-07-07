import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    int screemWidth = MediaQuery.of(context).size.width.toInt();
    List<Map<String, dynamic>> categories = [
      {
        'name': 'Gıda',
        'icon': 'assets/images/categories/food.svg',
      },
      {
        'name': 'Giyim',
        'icon': 'assets/images/categories/fashion.png',
      },
      {
        'name': 'Kişisel Bakım',
        'icon': 'assets/images/categories/personal_care.svg',
      },
      {
        'name': 'Tümü',
        'icon': 'assets/images/categories/all.svg',
      },
    ];
    List<Map<String, dynamic>> stores = [
      {
        'name': 'Organik Bakkal',
        'image': 'assets/images/stores/store1.jpg',
        'distance': '0.2 km',
      },
      {
        'name': 'Doğadan Manav',
        'image': 'assets/images/stores/store2.jpg',
        'distance': '0.5 km',
      },
      {
        'name': 'Kasadan Manav',
        'image': 'assets/images/stores/store3.jpg',
        'distance': '1.5 km',
      },
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        // place a top row that holds icon on center and like button on right
        child: ListView(
          children: [
            Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ]
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: screemWidth * 0.8,
                    child: Text(
                      'Doğa Dostu Ürünleri ve Markaları Keşfet',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: screemWidth / 15,
                        fontFamily: 'LatoTR',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // place  search bar. Place green border around it and show shadow on bottom
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color(0xff79EE66),
                  width: 2,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  // right arrow icon
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Color(0xff79EE66),
                    ),
                  ),
                ],
              ),
            ),
            // place a text says "Kategoriler" on left
            Container(
              margin: const EdgeInsets.only(top: 40, left: 20),
              child: Row(
                children: [
                  const Text(
                    'Yakındaki çevre dostu mağazalar',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'LatoTR',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // place stores list inside listview horizontal. Make sure they fill the screen. İf screen is not enough to show all stores, make it scrollable
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 170,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: stores.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          width: screemWidth * 0.4,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(
                                stores[index]['image'],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        // put name and distance in a row. Make name bold black and distance grey and normal
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                stores[index]['name'],
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'LatoTR',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                stores[index]['distance'],
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'LatoTR',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40, left: 20),
              child: const Row(
                children: [
                  Text(
                    'Kategoriler',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'LatoTR',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // palce categories list inside listview horizontal. Make sure they fill the screen. İf screen is not enough to show all categories, make it scrollable
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemExtent: 100,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        width: 80,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xffAAD2DB),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 5,
                              offset:
                              const Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Center(
                          child: categories[index]['name'] == 'Giyim' ? Image(image: AssetImage(categories[index]['icon'])) : SvgPicture.asset(
                            categories[index]['icon'],
                            height: 40,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Text(
                          categories[index]['name'],
                          style: const TextStyle(
                            fontSize: 15,
                            fontFamily: 'LatoTR',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
