import 'package:bluetooth_terminal/pages/footer.dart';
import 'package:flutter/material.dart';
// import the footer widget

class CommonLayout extends StatelessWidget {
  final Widget body;

  CommonLayout({required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: body),
          const Footer(), // add the footer at the bottom
        ],
      ),
    );
  }
}
