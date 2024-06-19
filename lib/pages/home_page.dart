import 'package:bluetooth_terminal/pages/about.dart';
import 'package:bluetooth_terminal/pages/footer.dart';
import 'package:bluetooth_terminal/pages/splash.dart';
import 'package:bluetooth_terminal/theme/theme_provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'package:bluetooth_terminal/routes/routes.dart';
import 'package:bluetooth_terminal/utils/color_utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: hexStringToColor('#808080'),
        elevation: 0,
        actions: [
          const Padding(padding: EdgeInsets.all(10)),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RouteManager.settings);
            },
            icon: const Icon(Icons.settings),
            color: const Color.fromARGB(255, 41, 38, 38),
          ),
          IconButton(
              onPressed: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme();
              },
              icon: const Icon(
                Icons.light_mode,
                color: Color.fromARGB(255, 41, 38, 38),
              )),
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.about);
              },
              icon: const Icon(
                Icons.person,
                color: Color.fromARGB(255, 41, 38, 38),
              )),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        shadowColor: Colors.white,
        surfaceTintColor: Colors.white,
        child: Column(
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/wlogo2.jpeg'),
                  ),
                  //Create Space
                  SizedBox(height: 10),

                  Text(
                    'QuantumnLeap Creations',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.mic),
              title: const Text(
                'FM Systems',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(RouteManager.fmSystems);
              },
            ),
            ListTile(
              leading: const Icon(Icons.back_hand),
              title: const Text(
                'Learn Sign Language',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(RouteManager.learnSign);
              },
            ),
            ListTile(
              leading: const Icon(Icons.reviews),
              title: const Text(
                'Translation',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(RouteManager.translation);
              },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text(
                'Communication',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(RouteManager.communication);
              },
            ),
            //Create Space
            const SizedBox(
              height: 15,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  )),
                ],
              ),
            ),
            ListTile(
              trailing: const Icon(Icons.people),
              title: const Text(
                'About Us',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutUsPage(),
                  ),
                );
              },
            ),
            ListTile(
              trailing: const Icon(Icons.exit_to_app),
              title: const Text(
                'Logout',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SplashView(),
                  ),
                );
              },
            ),
            //Create Space
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              content(),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(RouteManager.fmSystems);
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 30),
                  padding: const EdgeInsets.only(left: 20),
                  height: 100,
                  width: 350,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        hexStringToColor('#191919'),
                        hexStringToColor('#333333'),
                        hexStringToColor('#4d4d4d'),
                        hexStringToColor('#808080'),
                        hexStringToColor('#b3b3b3'),
                      ],
                      // begin: Alignment.topCenter, end: Alignment.bottomCenter
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.mic_rounded,
                        size: 70,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        'FM Systems',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(RouteManager.learnSign);
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 30),
                  padding: const EdgeInsets.only(left: 20),
                  height: 100,
                  width: 350,
                  decoration: BoxDecoration(
                    // color: Colors.blueGrey.shade400,
                    gradient: LinearGradient(
                      colors: [
                        hexStringToColor('#191919'),
                        hexStringToColor('#333333'),
                        hexStringToColor('#4d4d4d'),
                        hexStringToColor('#808080'),
                        hexStringToColor('#b3b3b3'),
                      ],
                      // begin: Alignment.topCenter, end: Alignment.bottomCenter
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.back_hand,
                        size: 65,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 45,
                      ),
                      Text(
                        'Learn Sign Language',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(RouteManager.translation);
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 30),
                  padding: const EdgeInsets.only(left: 20),
                  height: 100,
                  width: 350,
                  decoration: BoxDecoration(
                    // color: Colors.blueGrey.shade400,
                    gradient: LinearGradient(
                      colors: [
                        hexStringToColor('#191919'),
                        hexStringToColor('#333333'),
                        hexStringToColor('#4d4d4d'),
                        hexStringToColor('#808080'),
                        hexStringToColor('#b3b3b3'),
                      ],
                      // begin: Alignment.topCenter, end: Alignment.bottomCenter
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.chat_bubble_rounded,
                        size: 70,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        'Translation',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(RouteManager.communication);
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 30),
                  padding: const EdgeInsets.only(left: 20),
                  height: 100,
                  width: 350,
                  decoration: BoxDecoration(
                    // color: Colors.blueGrey.shade400,
                    gradient: LinearGradient(
                      colors: [
                        hexStringToColor('#191919'),
                        hexStringToColor('#333333'),
                        hexStringToColor('#4d4d4d'),
                        hexStringToColor('#808080'),
                        hexStringToColor('#b3b3b3'),
                      ],
                      // begin: Alignment.topCenter, end: Alignment.bottomCenter
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.people,
                        size: 70,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        'Communication',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget content() {
// ignore: avoid_unnecessary_containers
    return Container(
      child: CarouselSlider(
          items: [
            1,
            2,
            3,
            4,
          ].map((i) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      hexStringToColor('#191919'),
                      hexStringToColor('#333333'),
                      hexStringToColor('#4d4d4d'),
                      hexStringToColor('#808080'),
                      hexStringToColor('#b3b3b3'),
                    ],
                    // begin: Alignment.topCenter, end: Alignment.bottomCenter
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "Photo $i",
                  style: const TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            );
          }).toList(),
          options: CarouselOptions(
            height: 300,
          )),
    );
  }
}
