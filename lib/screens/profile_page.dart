import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed:
                    () {},
                    padding: new EdgeInsets.all(0.0),
                  iconSize: screenWidth * 0.1,
                    icon: SvgPicture.asset(
                      'assets/images/back.svg',
                      width: screenWidth * 0.1,
                      height: screenWidth * 0.1,
                    ),
                  splashRadius: 1,
                ),
                const Spacer(),
                IconButton(onPressed:
                    () {},
                  iconSize: screenWidth * 0.1,
                    icon: SvgPicture.asset(
                      'assets/images/cart.svg',
                      width: screenWidth * 0.1,
                      height: screenWidth * 0.1,
                    ),
                  splashRadius: 20,
                ),
                IconButton(onPressed:
                    () {},
                  iconSize: screenWidth * 0.1,
                  icon: SvgPicture.asset(
                    'assets/images/notification.svg',
                    width: screenWidth * 0.1,
                    height: screenWidth * 0.1,
                  ),
                  splashRadius: 20,
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: screenWidth * 0.3,
                          height: screenWidth * 0.3,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Kullanıcı Adı',
                          style: TextStyle(
                              fontSize: screenWidth * 0.05,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000)
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '@kullanici',
                          style: TextStyle(
                              fontSize: screenWidth * 0.05,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff868282)
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        SizedBox(
                          width: screenWidth * 0.9,
                          child: Text(
                            'Mail Adresi',
                            style: TextStyle(
                                fontSize: screenWidth * 0.05,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff000000),
                                shadows: const <Shadow>[
                                  Shadow(
                                    offset: Offset(0.0, 1.0),
                                    blurRadius: 10.0,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ],
                            ),
                            textAlign: TextAlign.left
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        Container(
                          width: screenWidth * 0.9,
                          decoration: BoxDecoration(
                            color: Color(0xe4dedebf),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Color(0x8c8989c7),
                              width: 5,
                            ),
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                offset: Offset(0.0, 5.0),
                                blurRadius: 5.0,
                                color: Color(0xff8C8989),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Text(
                              "mailler",
                              style: TextStyle(
                                  fontSize: screenWidth * 0.05,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff93989A)
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Card(
                      screenWidth: screenWidth,
                      title: 'Geçmiş Siparişlerim',
                    ),
                    Card(
                      screenWidth: screenWidth,
                      title: 'İhtiyaç Listem',
                    ),
                    Card(
                      screenWidth: screenWidth,
                      title: 'Ödeme Bilgileri',
                    ),
                    Card(
                      screenWidth: screenWidth,
                      title: 'Ayarlar',
                    ),
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  Card({super.key, required this.screenWidth, required this.title});
  double screenWidth;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.9,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Color(0x8c8989c7),
          width: 5,
        ),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            offset: Offset(0.0, 5.0),
            blurRadius: 5.0,
            color: Color(0xff8C8989),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontSize: screenWidth * 0.05,
                fontWeight: FontWeight.w400,
                color: Color(0xffffffff)
            ),
          )
          ),
        ),
      );

  }
}


