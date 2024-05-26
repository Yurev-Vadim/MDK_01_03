import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    title: const Text(
      'OZON',
      style: TextStyle(
          fontSize: 26
      ),
    ),
    centerTitle: true,
    leading: Builder(
      builder: (context) => IconButton(
        icon: const Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 10, 10, 10)
        ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
    ),
      actions: [
      IconButton(
        icon: const Icon(
            Icons.shopping_cart,
            color: Color.fromARGB(255, 10, 10, 10)
        ),
        onPressed: () {
          Navigator.pushNamed(context, 'shop');
        },
      ),
      IconButton(
        icon: const Icon(
            Icons.favorite_border,
            color: Color.fromARGB(255, 10, 10, 10)
        ),
        onPressed: () {
          Navigator.pushNamed(context, 'favorite');
        },
      ),
        IconButton(
          icon: const Icon(
              Icons.account_circle,
              color: Color.fromARGB(255, 10, 10, 10)
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'acc');
          },
        ),
    ],
  );
}
