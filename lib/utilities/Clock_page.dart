import 'package:flutter/material.dart';
import 'curved_navigation_bar.dart';
import 'navigation_service.dart';

class Clock_page extends StatefulWidget {
  const Clock_page({Key? key}) : super(key: key);

  @override
  _Clock_pageState createState() => _Clock_pageState();
}

class _Clock_pageState extends State<Clock_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: buildCurvedNavigationBar(
          context,
          (index) {
            switch (index) {
              case 0:
                NavigationService.navigateToHome();
                break;
              case 1:
                NavigationService.navigateTo('/clock');
                break;
              case 2:
                NavigationService.navigateTo('/calendar');
                break;
              case 3:
                NavigationService.navigateTo('/compass');
                break;
              case 4:
                NavigationService.navigateTo('/favorite');
                break;
            }
          },
          1,
        ),
        backgroundColor: Colors.blue[800],
        body: Center(child: Text("Clock")),
      ),
    );
  }
}
