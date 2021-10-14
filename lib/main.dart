import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'screens/bedroom.dart';
import 'screens/homescreen.dart';

void main() {
  runApp(const TouchStoneApp());
}

class TouchStoneApp extends StatelessWidget {
  const TouchStoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xff0A4DA2),
          body: Homescreen(),
          bottomNavigationBar: Container(
            color: Colors.white,
            height: 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset("assets/bulb.svg"),
                SvgPicture.asset("assets/feather-home.svg"),
                SvgPicture.asset("assets/feather-settings.svg")
              ],
            ),
          ),
        ));
  }
}
