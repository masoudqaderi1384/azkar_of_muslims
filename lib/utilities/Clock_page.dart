import 'package:flutter/material.dart';
import 'curved_navigation_bar.dart';
import 'navigation_service.dart';
import 'main.dart';

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
            if (index == PageManager.currentPageIndex) {
              // If the selected index is already the current page index, do nothing
              return;
            }

            setState(() {
              PageManager.currentPageIndex =
                  index; // Set the current index to the selected index
            });

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
          PageManager.currentPageIndex,
        ),
        backgroundColor: Colors.blue[800],
        body: Center(child: Text("Clock")),
      ),
    );
  }
}
