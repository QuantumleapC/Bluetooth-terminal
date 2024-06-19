import 'package:bluetooth_terminal/utils/color_utils.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: hexStringToColor('#808080'),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //Create Space
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.facebook),
                onPressed: () {
                  // Add your Facebook URL here
                },
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.twitter),
                onPressed: () {
                  // Add your Twitter URL here
                },
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.instagram),
                onPressed: () {
                  // Add your Instagram URL here
                },
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.linkedin),
                onPressed: () {
                  // Add your LinkedIn URL here
                },
              ),
            ],
          ),
          //Create Space
          const SizedBox(height: 10),
          Text(
            '©QuantumnLeap Creations.All rights reserved!',
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }
}
