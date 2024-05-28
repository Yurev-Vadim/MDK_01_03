import 'package:flutter/material.dart';
import 'package:vadim/pages/home.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../types/types.dart';
import 'item_page.dart';

class ShopStrings {
  int id;
  int oldid;
  String imgSrc;
  double price;
  String itemName;
  int quantity;

  ShopStrings(
      this.id,
      this.oldid,
      this.imgSrc,
      this.price,
      this.itemName,
      {this.quantity = 1}
  );
}

class ShopPage extends StatefulWidget{
  const ShopPage({super.key});

  static List<ShopStrings> shop = [];

  static void addItem(
      int id, int oldid, String imgSrc, double price, String itemName) {
    shop.add(ShopStrings(id, oldid, imgSrc, price, itemName));
  }

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        body: ListView.builder(
          itemCount: ShopPage.shop.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                HomePage.indph = ShopPage.shop[index].oldid * 3;
                HomePage.ind = ShopPage.shop[index].oldid;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  ItemPage(
                            imgSrc: item[index].imgSrc,
                            price: item[index].price,
                            desc: item[index].desc,
                            itemName: item[index].itemName)));
              },
              child: Container(
                width: 100,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Image.network(
                      ShopPage.shop[index].imgSrc,
                      width: 100,
                      height: 100,
                    ),
                    Column(
                      children: [
                        SizedBox(
                            width: 200,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                ShopPage.shop[index].itemName,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            '${(ShopPage.shop[index].price * ShopPage.shop[index].quantity)}',
                            style: const TextStyle(
                                fontSize: 24,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  ShopPage.shop[index].quantity--;
                                });
                              },
                              icon: const Icon(Icons.remove),
                            ),
                            Text(
                              '${ShopPage.shop[index].quantity}',
                              style: const TextStyle(fontSize: 20),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  ShopPage.shop[index].quantity++;
                                });
                              },
                              icon: const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
    );
  }
}