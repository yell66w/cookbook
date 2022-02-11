import 'package:cookbook/widgets/food_card.dart';
import 'package:cookbook/widgets/ingredient_card.dart';
import 'package:flutter/material.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({Key? key, required this.food}) : super(key: key);

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Recipe",
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 20),
        ),
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor, //change your color here
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    food.category,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Theme.of(context).cardColor,
                    ),
                  ),
                  Text(
                    food.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    'Chef ${food.author}',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Theme.of(context).primaryColorDark,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 350,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage(food.imageURL),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Ingredients",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ListView.builder(
                  itemCount: food.ingredients.length,
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return IngredientCard(ingredient: food.ingredients[index]);
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(16, 40, 16, 16),
                  decoration: BoxDecoration(
                    color: Theme.of(context).splashColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Directions",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Theme.of(context).cardColor),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ListView.builder(
                        itemCount: food.steps.length,
                        physics: const ClampingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                              margin: const EdgeInsets.only(bottom: 16),
                              child: Text(
                                '${index + 1}. ${food.steps[index]}',
                                style: TextStyle(
                                  color: Theme.of(context).secondaryHeaderColor,
                                ),
                              ));
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
