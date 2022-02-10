import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 14),
      decoration: InputDecoration(
        filled: true,
        prefixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_rounded,
              color: Theme.of(context).hintColor,
            )),
        fillColor: Theme.of(context).splashColor,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none),
        hintText: 'Search by recipes',
        hintStyle: TextStyle(
          color: Theme.of(context).hintColor,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 10),
      ),
    );
  }
}
