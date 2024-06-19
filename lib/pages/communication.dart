import 'package:bluetooth_terminal/pages/footer.dart';
import 'package:bluetooth_terminal/routes/routes.dart';
import 'package:bluetooth_terminal/utils/color_utils.dart';
import 'package:flutter/material.dart';

class Communication extends StatefulWidget {
  const Communication({super.key});

  @override
  State<Communication> createState() => _CommunicationState();
}

class _CommunicationState extends State<Communication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text To Speech"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(RouteManager.textToSpeech);
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
                    Icons.speaker,
                    size: 75,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    'Text To Speech',
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
              Navigator.of(context).pushNamed(RouteManager.speechToText);
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
                    Icons.text_increase,
                    size: 75,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    'Speech To Text',
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
