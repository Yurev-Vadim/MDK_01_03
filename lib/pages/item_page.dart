import 'package:flutter/material.dart';
import 'package:vadim/pages/shop_page.dart';
import '../types/types.dart';
import '../widgets/bottom_navigation_bar.dart';
import 'favorite_page.dart';
import 'home.dart';

class ItemPage extends StatelessWidget {

  final String imgSrc;
  final double price;
  final String itemName;
  final String desc;

  const ItemPage({
    super.key,
    required this.imgSrc,
    required this.price,
    required this.itemName,
    required this.desc,
  });

@override
Widget build(BuildContext context) {
  final int count = HomePage.indph;
  final int ind = HomePage.ind;

    return Scaffold(
        appBar: buildAppBar(context),
        body: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
            return Column(children: [
            Padding(
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
                    style: const TextStyle(fontSize: 22, color: Colors.green),
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    child: Text(
                      desc,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child:
                    ElevatedButton(
                      onPressed: (){
                        ShopPage.addItem(
                            index,
                            item[index].id,
                            item[index].imgSrc,
                            item[index].price,
                            item[index].itemName);
                        },
                    child: const Text(
                      "В корзину",
                      style: TextStyle(fontSize: 24,
                          color: Color.fromARGB(255, 10, 10, 10)
                      ),
                    ),
                  )),
                  Padding(
                      padding: const EdgeInsets.all(6),
                      child:
                      ElevatedButton(
                        onPressed: (){
                          FavoritePage.addItem(
                              index,
                              item[index].id,
                              item[index].imgSrc,
                              item[index].price,
                              item[index].itemName);
                        },
                        child: const Text(
                          "В избранные",
                          style: TextStyle(fontSize: 24,
                              color: Color.fromARGB(255, 10, 10, 10)
                          ),
                        ),
                      ))
                    ])
                  ],
                ),
              ],
            ),
          ),
        ]);
      })
    );
  }
}