import 'package:flutter/material.dart';
import 'package:vadim/pages/home.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../shared/types/types.dart';

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
    required this.desc
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        bottomNavigationBar: buildBottomBar(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Image.network(
                //  item[index].imgSrc
                //),
                const SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      itemName,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "$price руб.",
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
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: () {
                          // Handle button press
                        },
                        child: const Text(
                          "Купить",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}