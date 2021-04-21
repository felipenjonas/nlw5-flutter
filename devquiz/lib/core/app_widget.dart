// import 'package:DevQuiz/home/home_page.dart';
import 'package:devquiz/home/home_page.dart';
// import 'package:devquiz/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "devquiz",
      // home: SplashPage(), Vai mostrar a splash pra poder ser configurada
      home: HomePage(),
    );
  }
}
