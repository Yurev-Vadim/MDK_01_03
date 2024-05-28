import 'package:flutter/material.dart';
import '../types/types.dart';
import '../widgets/bottom_navigation_bar.dart';
import 'home.dart';
import 'item_page.dart';

class FavStrings {
  int id;
  int oldid;
  String imgSrc;
  double price;
  String itemName;

  FavStrings(
      this.id,
      this.oldid,
      this.imgSrc,
      this.price,
      this.itemName
  );
}

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  static List<FavStrings> fav = [];

  static void addItem(int id, int oldid, String imgSrc, double price, String itemName) {
  fav.add(FavStrings(id, oldid, imgSrc, price, itemName));
  }

  @override
  _FavoritePageState createState() => _FavoritePageState();
  }

  class _FavoritePageState extends State<FavoritePage> {

  @override
  Widget build(BuildContext context) {

    final int count = HomePage.indph;
    final int ind = HomePage.ind;

    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView.builder(
        itemCount: FavoritePage.fav.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
           onTap: () {
              HomePage.indph = FavoritePage.fav[index].oldid * 3;
              HomePage.ind = FavoritePage.fav[index].oldid;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ItemPage(
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
                    FavoritePage.fav[index].imgSrc,
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
                              FavoritePage.fav[index].itemName,
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
                            '${FavoritePage.fav[index].price}',
                            style: const TextStyle(
                                fontSize: 18,
                                color: Colors.green,
                                fontWeight: FontWeight.bold)
                        ),
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