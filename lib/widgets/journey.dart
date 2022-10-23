import 'package:flutter/material.dart';

class Journey extends StatefulWidget {
  const Journey({super.key});

  State<Journey> createState() => _JourneyState();
}

class _JourneyState extends State<Journey> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Create New Journey"),
        ],
      ),
    );
  }
}
