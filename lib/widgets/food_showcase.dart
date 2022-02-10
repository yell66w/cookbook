import 'package:cookbook/widgets/food_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class FoodShowcase extends StatefulWidget {
  const FoodShowcase({
    Key? key,
  }) : super(key: key);

  @override
  State<FoodShowcase> createState() => _FoodShowcaseState();
}

class _FoodShowcaseState extends State<FoodShowcase> {
  late Future<List<Food>> _items;

  Future<List<Food>> fetchFood() async {
    final String response = await rootBundle.loadString('data/recipes.json');
    Iterable foods = jsonDecode(response);
    return List<Food>.from(foods.map((food) => Food.fromJson(food)));
  }

  @override
  void initState() {
    super.initState();
    _items = fetchFood();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: FutureBuilder<List<Food>>(
        future: _items,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return FoodCard(food: snapshot.data![index]);
                });
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
