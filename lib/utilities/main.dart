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

class PageManager {
  static int currentPageIndex = 0;
}

class MyApp extends StatelessWidget {
  final List<Widget> _children = [
    HomePage(),
    Clock_page(),
    Calendar(),
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
      debugShowCheckedModeBanner:false,
      navigatorKey: NavigationService.navigatorKey,
      home: Scaffold(
        body: _children[PageManager.currentPageIndex],
        bottomNavigationBar: buildCurvedNavigationBar(
          context,
              (index) {
            NavigationService.navigateToHome(); // Navigate to home first
            PageManager.currentPageIndex = index; // Save the current page index
          },
          PageManager.currentPageIndex,
        ),
      ),
      // Define named routes...
      routes: {
        '/home': (context) => HomePage(),
        '/clock': (context) => Clock_page(),
        '/calendar': (context) => Calendar(),
        '/compass': (context) => Compass(),
        '/favorite': (context) => Favirate(),
      },
    );
  }
}
