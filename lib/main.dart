import 'package:cookbook/widgets/categories.dart';
import 'package:cookbook/widgets/food_showcase.dart';
import 'package:cookbook/widgets/searchbar.dart';
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
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Cookbook",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Theme.of(context).primaryColor),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: const [
                    Text(
                      "What would you like to cook today?",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Searchbar(),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Categories(),
              const SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "Recommended for you",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  FoodShowcase()
                ],
              ),
            ],
          ),
        ));
  }
}
