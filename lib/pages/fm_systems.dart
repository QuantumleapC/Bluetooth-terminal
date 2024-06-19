import 'package:bluetooth_terminal/pages/footer.dart';
import 'package:flutter/material.dart';

class FmSystems extends StatefulWidget {
  const FmSystems({super.key});

  @override
  State<FmSystems> createState() => _FmSystemsState();
}

class _FmSystemsState extends State<FmSystems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FM System"),
      ),
      body: (const Text('Systems')),
      bottomNavigationBar: (const Footer()),
    );
  }
}
