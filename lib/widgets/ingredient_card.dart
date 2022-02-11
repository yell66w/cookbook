import 'package:cookbook/widgets/food_card.dart';
import 'package:cookbook/utils/string_extension.dart';
import 'package:flutter/material.dart';

class IngredientCard extends StatelessWidget {
  const IngredientCard({Key? key, required this.ingredient}) : super(key: key);

  final Ingredient ingredient;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ingredient.name.capitalize(),
            style: TextStyle(
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
          Text(
            ingredient.quantity,
            style: TextStyle(
              color: Theme.of(context).secondaryHeaderColor,
            ),
          )
        ],
      ),
    );
  }
}
