import 'package:cookbook/providers/filter_provider.dart';
import 'package:cookbook/widgets/category.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Categories",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 35,
          child: ListView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: const [
              Category(
                title: EnumCategory.all,
                ml: 16,
              ),
              Category(title: EnumCategory.breakfast),
              Category(title: EnumCategory.lunch),
              Category(title: EnumCategory.dinner),
              Category(title: EnumCategory.snack),
            ],
          ),
        )
      ],
    );
  }
}
