import 'package:flutter/material.dart';
import 'package:vadim/pages/favorite_page.dart';
import 'package:vadim/pages/shop_page.dart';
import 'package:vadim/types/types.dart';
import 'item_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static int indph = 0;
  static int ind = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.search,
              color: Color.fromARGB(255, 10, 10, 10),
            ),
            onPressed: (){},
          ),
          title: const Text(
            'OZON',
            style: TextStyle(fontSize: 26),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
            icon: const Icon(
                Icons.shopping_cart,
                color: Color.fromARGB(255, 10, 10, 10)
            ),
            onPressed: (){
              Navigator.pushNamed(context, 'shop');
            },
            ),
            IconButton(
              icon: const Icon(
                  Icons.favorite_border,
                  color: Color.fromARGB(255, 10, 10, 10)
              ),
              onPressed: () {
                Navigator.pushNamed(context,  'favorite');
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
        ),
        body: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: item.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              mainAxisExtent: 400
            ),
            itemBuilder: (context,index) {
              return GestureDetector(
                  onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ItemPage(
                        imgSrc: item[index].imgSrc,
                        price: item[index].price,
                        desc: item[index].desc,
                        itemName: item[index].itemName
                      ),
                    )
                );
              },
              child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0)),
                    child: Column(
                        children: [
                          ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16.0),
                              topRight: Radius.circular(16.0)
                          ),
                          child: Image.network(
                              item[index].imgSrc,
                              height: 190,
                              width: double.infinity,
                              fit: BoxFit.cover,
                          )
                        ),
                          Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text(
                              item[index].itemName,
                              maxLines: 2,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                                Text(
                                  maxLines: 4,
                                  item[index].desc,
                                  style: const TextStyle(
                                      color: Color.fromARGB(
                                          255, 110, 110, 110),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400
                                  ),
                                )
                          ])
                          ),
                              Padding(
                              padding: const EdgeInsets.fromLTRB(12.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                Text(
                                "${item[index].price} р",
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                                  IconButton(
                                    icon: const Icon(
                                        Icons.shopping_cart,
                                        color: Color.fromARGB(
                                            255, 158, 158, 158)
                                    ),
                                    onPressed: () {
                                      ShopPage.addItem(
                                          index,
                                          item[index].id,
                                          item[index].imgSrc,
                                          item[index].price,
                                          item[index].itemName);
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                        Icons.favorite_border,
                                        color: Color.fromARGB(
                                            255, 158, 158, 158)
                                    ),
                                    onPressed: () {
                                      FavoritePage.addItem(
                                          item[ind].id,
                                          ind,
                                          item[ind].imgSrc,
                                          item[ind].price,
                                          item[ind].itemName
                                      );
                                      },
                                  )
                              ])
                          )
                        ]),
              ),
              );
              }),
    );
  }
}