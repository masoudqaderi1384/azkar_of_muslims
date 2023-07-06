import 'package:flutter/material.dart';
import 'curved_navigation_bar.dart';
import 'navigation_service.dart';

class Clender extends StatefulWidget {
  const Clender({Key? key}) : super(key: key);

  @override
  State<Clender> createState() => _ClenderState();
}

class _ClenderState extends State<Clender> {
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
          2, // Set the current index for this page
        ),
        backgroundColor: Colors.blue[800],
          body: Center(child: Text("Clock")),
      ),
    );
  }
}
