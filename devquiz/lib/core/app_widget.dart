import 'package:devquiz/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    hideStatusBar();
    return MaterialApp(
      title: "devquiz",
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}

Future hideStatusBar() => SystemChrome.setEnabledSystemUIOverlays([]);
