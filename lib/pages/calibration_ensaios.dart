import 'package:flutter/material.dart';

class Ensaios extends StatefulWidget {
  const Ensaios({super.key});

  @override
  State<Ensaios> createState() => _EnsaiosState();
}

class _EnsaiosState extends State<Ensaios> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        controller: _pageController,
      ),
    );
  }
}
