import 'package:flutter/material.dart';
import '../pages/home.dart';
import '../widgets/bottom_navigation_bar.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;
  final List<Widget> _screens = <Widget>[
    const HomePage(),
  ];

  void _onItemClick(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemClick,
        ),
      ),
    );
  }
}
