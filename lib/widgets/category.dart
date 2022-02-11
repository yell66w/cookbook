import 'package:cookbook/providers/filter_provider.dart';
import 'package:cookbook/utils/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Category extends StatelessWidget {
  const Category({Key? key, required this.title, this.ml = 8})
      : super(key: key);

  final EnumCategory title;
  final double ml;

  @override
  Widget build(BuildContext context) {
    FilterProvider filterProvider =
        Provider.of<FilterProvider>(context, listen: false);

    return GestureDetector(
      onTap: () {
        filterProvider.changeCategory(title);
      },
      child: Consumer<FilterProvider>(
        builder: (context, filterProvider, child) => Container(
          child: Center(
            child: Text(
              title.value.toString().capitalize(),
              style: TextStyle(
                  color: filterProvider.selectedCategory == title
                      ? Colors.white
                      : Theme.of(context).primaryColorDark,
                  fontWeight: FontWeight.w600),
            ),
          ),
          width: 100.0,
          decoration: BoxDecoration(
            color: filterProvider.selectedCategory == title
                ? Theme.of(context).primaryColor
                : Theme.of(context).splashColor,
            borderRadius: BorderRadius.circular(20),
          ),
          margin: EdgeInsets.only(left: ml),
        ),
      ),
    );
  }
}
