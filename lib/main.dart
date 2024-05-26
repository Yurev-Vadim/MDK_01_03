import 'package:flutter/material.dart';
import 'package:vadim/pages/buy.dart';
import 'package:vadim/pages/favorite_page.dart';
import 'package:vadim/pages/log_page.dart';
import 'package:vadim/pages/reg_page.dart';
import 'package:vadim/pages/shop_page.dart';
import '../pages/acc_page.dart';
import '../pages/home.dart';

void main() {
  runApp(const App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromARGB(255, 10, 10, 10),
            textTheme: const TextTheme(
              bodyMedium: TextStyle(color: Colors.grey, fontSize: 15)
            ),
            appBarTheme: const AppBarTheme(
                foregroundColor: Colors.black,
                backgroundColor: Color.fromARGB(255, 35, 35, 35)
            )
        ),
      routes: {
        'home': (context) => const HomePage(),
        'favorite': (context) => const FavoritePage(),
        'shop': (context) => const ShopPage(),
        'acc': (context) => const AccPage(),
        'buy': (context) => const BuyPage(),
        'log': (context) => const SignIn(),
        'reg': (context) => const SignUp()
      },
      home: const SignIn(),
    );
  }
}