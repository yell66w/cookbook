import 'dart:developer';

import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key, this.title = 'Lunch', this.ml = 8})
      : super(key: key);

  final String title;
  final double ml;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 100.0,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.only(left: ml),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
