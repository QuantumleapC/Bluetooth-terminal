import 'package:bluetooth_terminal/pages/footer.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: (const Text('Settings')),
      bottomNavigationBar: (const Footer()),
    );
  }
}
