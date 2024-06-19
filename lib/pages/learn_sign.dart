import 'package:bluetooth_terminal/pages/footer.dart';
import 'package:bluetooth_terminal/routes/routes.dart';
import 'package:bluetooth_terminal/utils/color_utils.dart';
import 'package:flutter/material.dart';

class LearnSign extends StatefulWidget {
  const LearnSign({super.key});

  @override
  State<LearnSign> createState() => _LearnSignState();
}

class _LearnSignState extends State<LearnSign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Sign'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(
                  RouteManager.settings); //CHANGE TERMINAL TO APPROPRIATE ROUTE
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
                  Text(
                    'SASL',
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
              Navigator.of(context).pushNamed(
                  RouteManager.settings); //CHANGE TERMINAL TO APPROPRIATE ROUTE
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
                  Text(
                    'ASL',
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
              Navigator.of(context).pushNamed(
                  RouteManager.settings); //CHANGE TERMINAL TO APPROPRIATE ROUTE
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
                  Text(
                    'CSL',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: (const Footer()),
    );
  }
}
