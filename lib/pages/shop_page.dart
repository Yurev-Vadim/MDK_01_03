import 'package:flutter/material.dart';
import '../widgets/bottom_navigation_bar.dart';

class ShopPage extends StatefulWidget{
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPage();
}

class _ShopPage extends State<ShopPage> {
@override
Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        body: Container()
    );
  }
}