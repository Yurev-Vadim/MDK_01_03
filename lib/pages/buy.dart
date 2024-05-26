import 'package:flutter/material.dart';
import '../widgets/bottom_navigation_bar.dart';

class BuyPage extends StatelessWidget{
  const BuyPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        body: Container()
    );
  }
}