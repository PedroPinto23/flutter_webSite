import 'package:flutter/material.dart';
import 'package:flutter_website/screens/Bares/bares_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Bares(),
      ),
    );
  }
}
