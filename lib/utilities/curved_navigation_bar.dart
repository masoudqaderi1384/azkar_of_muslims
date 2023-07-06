import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'navigation_service.dart';


Widget buildCurvedNavigationBar(BuildContext context, Function(int) onTap, int currentIndex) {
  return CurvedNavigationBar(
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
        FontAwesomeIcons.solidHeart,
        color: Colors.grey.shade200,
      ),
    ],
    onTap: onTap,
  );
}