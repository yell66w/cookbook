import 'package:cookbook/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Hellix',
        primaryColor: const Color(0xfff55a00),
        secondaryHeaderColor: const Color(0xff1f222b),
        splashColor: const Color(0xfff7f8fe),
        hintColor: const Color(0xffa9b1ca),
        primaryColorDark: const Color(0xff9498A2),
        cardColor: const Color(0xff128fae),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomePage(),
    );
  }
}
