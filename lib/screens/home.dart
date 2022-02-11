import 'package:cookbook/widgets/categories.dart';
import 'package:cookbook/widgets/food_showcase.dart';
import 'package:cookbook/widgets/searchbar.dart';
import 'package:flutter/material.dart';

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
                    // SizedBox(
                    //   height: 16,
                    // ),
                    // Searchbar(),
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
              Divider(
                height: 10,
                thickness: 0.2,
                indent: 25,
                endIndent: 25,
                color: Theme.of(context).primaryColorDark,
              ),
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
                        fontSize: 18,
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
