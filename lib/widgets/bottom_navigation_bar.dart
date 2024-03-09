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
          Navigator.pop(context);
        },
      ),
      IconButton(
        icon: const Icon(
            Icons.favorite_border,
            color: Color.fromARGB(255, 10, 10, 10)
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ],
  );
}
Widget buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: const [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 10, 10, 10)
          ),
          child: Center(
            child: Text(
              'Фильтр товаров',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildSearchBar(BuildContext context) {
  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 400) {
        return Center(
          child: Container(
            width: constraints.maxWidth * 0.3,
            height: constraints.maxHeight * 0.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 10, 10, 10),
            ),
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: '...',
                border: InputBorder.none,
              ),
            ),
          ),
        );
      } else {
        return Container();
      }
    },
  );
}