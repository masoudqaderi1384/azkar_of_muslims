import 'package:azkar_of_muslims/utilities/home_page.dart';
import 'package:flutter/material.dart';
import 'navigation_service.dart';
import 'Clock_page.dart';
import 'Clender.dart';
import 'Compass.dart';
import 'Favirate.dart';
import 'curved_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Widget> _children = [
    HomePage(),
    Clock_page(),
    Clender(),
    Compass(),
    Favirate(),
  ];

  int _currentIndex = 0;

  void onTabTapped(int index) {
    NavigationService.navigateToHome(); // Navigate to home first
    _currentIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey,
      home: Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: buildCurvedNavigationBar(
          context,
          onTabTapped,
          _currentIndex,
        ),
      ),
      // Define named routes...
      routes: {
        '/home': (context) => HomePage(),
        '/clock': (context) => Clock_page(),
        '/calendar': (context) => Clender(),
        '/compass': (context) => Compass(),
        '/favorite': (context) => Favirate(),
      },
    );
  }
}
