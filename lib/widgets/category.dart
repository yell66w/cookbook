import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key, this.title = 'Lunch', this.ml = 8})
      : super(key: key);

  final String title;
  final double ml;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      decoration: BoxDecoration(
        color: Theme.of(context).splashColor,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(left: ml),
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
