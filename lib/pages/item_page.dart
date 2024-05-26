import 'package:flutter/material.dart';
import '../widgets/bottom_navigation_bar.dart';

class ItemPage extends StatelessWidget {

  final String imgSrc;
  final String itemName;
  final double price;
  final String desc;

  const ItemPage({
    super.key,
    required this.imgSrc,
    required this.itemName,
    required this.price,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    imgSrc
                  ),
                  Text(
                    itemName,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "$price р",
                    style: const TextStyle(fontSize: 18, color: Colors.green),
                  ),
                  const SizedBox(height: 16),
                  SingleChildScrollView(
                    child: Text(
                      desc,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ],
          ),
        ),
    );
  }
}