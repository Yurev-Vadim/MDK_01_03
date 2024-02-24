import 'package:flutter/material.dart';
import '../app/app_theme.dart';
import '../pages/home.dart';
import '../pages/phone.dart';
import '../widgets/bottom_navigation_bar.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;
  final List<Widget> _screens = <Widget>[
    HomePage(),
    PhonePage(),
    PhonePage(),
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
      theme: ThemeData(colorScheme: AppTheme.mainColorScheme),
      home: Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: CustomBottomNavigationBar(
          // Используем новый компонент
          currentIndex: _selectedIndex,
          onTap: _onItemClick,
        ),
      ),
    );
  }
}