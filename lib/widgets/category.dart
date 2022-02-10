import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key, this.title = 'Lunch'}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      decoration: BoxDecoration(
        color: Theme.of(context).splashColor,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.only(left: 14),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: Theme.of(context).primaryColorDark,
              fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
