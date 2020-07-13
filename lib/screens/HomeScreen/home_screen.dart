import 'package:flutter/material.dart';
import 'package:flutter_website/screens/Bares/bares_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 140, 126),
      body: Container(
        padding: EdgeInsets.all(38),
        child: Bares(),
      ),
    );
  }
}
