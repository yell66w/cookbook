import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class Ingredient {
  final String quantity;
  final String name;
  final String type;

  const Ingredient(
      {required this.quantity, required this.name, required this.type});
}

class Food {
  final String name;
  final String category;
  final List<dynamic> steps;
  final List<dynamic> timers;
  final String imageURL;
  final String author;
  final List<dynamic> ingredients;

  const Food({
    required this.name,
    required this.category,
    required this.author,
    required this.steps,
    required this.timers,
    required this.imageURL,
    required this.ingredients,
  });

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
      name: json['name'],
      steps: json['steps'],
      timers: json['timers'],
      imageURL: json['imageURL'],
      author: json['author'],
      ingredients: json['ingredients'],
      category: json['category'],
    );
  }
}

class FoodCard extends StatelessWidget {
  final Food food;

  const FoodCard({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).splashColor,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        margin: const EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            SizedBox(
              height: 80,
              width: 80,
              child: CircleAvatar(
                backgroundImage: AssetImage(food.imageURL),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    food.category,
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Theme.of(context).cardColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    food.name,
                    style: TextStyle(
                      fontSize: 22,
                      color: Theme.of(context).secondaryHeaderColor,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    food.author,
                    style: TextStyle(
                      color: Theme.of(context).primaryColorDark,
                      overflow: TextOverflow.ellipsis,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
