import 'package:flutter/material.dart';
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
      home: const HomePage(),
    );
  }
}