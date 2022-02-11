import 'package:flutter/material.dart';

extension EnumCategoryExtension on EnumCategory {
  String get value {
    switch (this) {
      case EnumCategory.all:
        return "all";
      case EnumCategory.breakfast:
        return "breakfast";
      case EnumCategory.lunch:
        return "lunch";
      case EnumCategory.dinner:
        return "dinner";
      case EnumCategory.snack:
        return "snack";
      default:
        return "";
    }
  }
}

enum EnumCategory {
  all,
  breakfast,
  lunch,
  dinner,
  snack,
}

class FilterProvider extends ChangeNotifier {
  EnumCategory selectedCategory = EnumCategory.all;
  void changeCategory(EnumCategory category) {
    selectedCategory = category;
    notifyListeners();
  }
}
