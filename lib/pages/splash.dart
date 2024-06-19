import 'dart:async';
import 'package:bluetooth_terminal/pages/home_page.dart';
import 'package:bluetooth_terminal/utils/color_utils.dart';
import 'package:bluetooth_terminal/widget/logo_widget.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      },
    );

    return Scaffold(
      backgroundColor: hexStringToColor('#b3b3b3'),
      body: Stack(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.6,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      hexStringToColor('#191919'),
                      hexStringToColor('#333333'),
                      hexStringToColor('#4d4d4d'),
                      hexStringToColor('#808080'),
                      hexStringToColor('#b3b3b3'),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.6,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(70))),
                child: Center(
                  child: logoWidget(
                    'assets/images/wlogo.jpeg',
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.666,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.666,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    hexStringToColor('#191919'),
                    hexStringToColor('#333333'),
                    hexStringToColor('#4d4d4d'),
                    hexStringToColor('#808080'),
                    hexStringToColor('#b3b3b3'),
                  ],
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(70),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
