import 'package:flutter/material.dart';
import '../widgets/bottom_navigation_bar.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

@override
State<FavoritePage> createState() => _FavoritePage();
}

class _FavoritePage extends State<FavoritePage> {
@override
Widget build(BuildContext context) {
  return Scaffold(
      appBar: buildAppBar(context),
      body: Container()
    );
  }
}