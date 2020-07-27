import 'package:flutter/material.dart';
import 'package:flutter_website/Telas/DesktopScreen/desktop_screen.dart';
import 'package:flutter_website/Telas/MobileScreen/mobile_screen.dart';
import 'package:flutter_website/Telas/TabletScreen/tablet_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1000) {
        print(constraints.biggest);
        return DesktopScreen();
      } else if (constraints.maxWidth > 700 && constraints.maxWidth < 1000) {
        print(constraints.biggest);
        return TabletScreen();
      } else {
        print(constraints.biggest);
        return MobileScreen();
      }
    });
  }
}
