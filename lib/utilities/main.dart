import 'package:azkar_of_muslims/utilities/home_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'navigation_service.dart';
import 'Clock_page.dart';
import 'Clender.dart';
import 'Compass.dart';
import 'Favirate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

final List<Widget> pages = [
  HomePage(),
  Clock_page(),
  Calendar(),
  Compass(),
  Favirate(),
];

class _MyAppState extends State<MyApp> {
  Widget currentPage = pages[0];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigationService.navigatorKey,
      home: Scaffold(
        body: currentPage,
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.grey.shade200,
          color: Colors.blue.shade800,
          animationDuration: Duration(milliseconds: 300),
          height: 60.0,
          items: <Widget>[
            FaIcon(
              FontAwesomeIcons.house,
              color: Colors.grey.shade200,
            ),
            FaIcon(
              FontAwesomeIcons.solidClock,
              color: Colors.grey.shade200,
            ),
            FaIcon(
              FontAwesomeIcons.solidCalendarCheck,
              color: Colors.grey.shade200,
            ),
            FaIcon(
              FontAwesomeIcons.solidCompass,
              color: Colors.grey.shade200,
            ),
            FaIcon(
              FontAwesomeIcons.gear,
              color: Colors.grey.shade200,
            ),
          ],
          onTap: (indexOfCurrentPage) {
            setState(() {
              currentPage = pages[indexOfCurrentPage];
            });
          },
        ),
      ),
    );
  }
}
