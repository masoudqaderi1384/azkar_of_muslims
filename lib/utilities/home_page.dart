import 'package:azkar_of_muslims/utilities/azkar.dart';
import 'package:azkar_of_muslims/utilities/preyer_motion.dart';
import 'package:flutter/material.dart';
import 'package:azkar_of_muslims/utilities/curved_navigation_bar.dart';
import 'navigation_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class PageManager {
  static int currentPageIndex = 0;
}

class _HomePageState extends State<HomePage> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawenOpen = false;
  bool isNamaz = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 300),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(60.0)),
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
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25.0, top: 25.0, right: 25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "ضیاء الاذکار",
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Afghan',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "دعاهای جامع نبوی ",
                              style: TextStyle(
                                  fontFamily: 'Afghan',
                                  fontSize: 12,
                                  color: Colors.blue[200]),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12.0)),
                          padding: EdgeInsets.all(12.0),
                          child: isDrawenOpen
                              ? IconButton(
                                  icon: Icon(Icons.arrow_forward_ios_rounded,
                                      color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      xOffset = 0;
                                      yOffset = 0;
                                      scaleFactor = 1;
                                      isDrawenOpen = false;
                                    });
                                  },
                                )
                              : IconButton(
                                  icon: Icon(Icons.menu_rounded,
                                      color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      xOffset = -120;
                                      yOffset = 100;
                                      scaleFactor = 0.75;
                                      isDrawenOpen = true;
                                    });
                                  },
                                ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.more_horiz_rounded,
                              color: Colors.white),
                          onPressed: () {},
                        ),
                        Text(
                          "اوقات نماز های پنج گانه",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Afghan',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Preyer_table(
                            icon_namaz: Icon(
                              Icons.access_time_filled_rounded,
                              color: Colors.grey[200],
                            ),
                            name_namaz: "خفتن",
                            time_namaz: "09:30"),
                        Preyer_table(
                            icon_namaz: Icon(
                              Icons.access_time_filled_rounded,
                              color: Colors.grey[200],
                            ),
                            name_namaz: "شام",
                            time_namaz: "09:30"),
                        Preyer_table(
                            icon_namaz: Icon(
                              Icons.access_time_filled_rounded,
                              color: Colors.grey[200],
                            ),
                            name_namaz: "عصر",
                            time_namaz: "09:30"),
                        Preyer_table(
                            icon_namaz: Icon(
                              Icons.access_time_filled_rounded,
                              color: Colors.grey[200],
                            ),
                            name_namaz: "ظهر",
                            time_namaz: "09:30"),
                        Preyer_table(
                            icon_namaz: Icon(
                              Icons.access_time_filled_rounded,
                              color: Colors.grey[200],
                            ),
                            name_namaz: "نور",
                            time_namaz: "09:30"),
                        Preyer_table(
                            icon_namaz: Icon(
                              Icons.access_time_filled_rounded,
                              color: Colors.grey[200],
                            ),
                            name_namaz: "صبح",
                            time_namaz: "09:30"),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0)),
                  ),
                  padding: EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[700],
                            borderRadius: BorderRadius.circular(10.0)),
                        height: 10,
                        width: 75,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.more_horiz_rounded),
                          Text(
                            "اذکار نبوی",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Afghan',
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                          child: ListView(
                        children: [
                          Prayer(
                              name_Azkar: "اذکار صبح",
                              shar_Azkar: "احادیث صحیح و مستند",
                              icon_Azkar: Icons.sunny),
                          Prayer(
                              name_Azkar: "اذکار شام",
                              shar_Azkar: "احادیث صحیح و مستند",
                              icon_Azkar: Icons.sunny_snowing),
                          Prayer(
                              name_Azkar: "دعاهای قرآنی",
                              shar_Azkar: "احادیث صحیح و مستند",
                              icon_Azkar: Icons.book_online_rounded),
                          Prayer(
                              name_Azkar: "دعاهای مسنون",
                              shar_Azkar: "احادیث صحیح و مستند",
                              icon_Azkar: Icons.book_rounded),
                          Prayer(
                              name_Azkar: "دعاهای مسنون",
                              shar_Azkar: "احادیث صحیح و مستند",
                              icon_Azkar: Icons.book_rounded),
                          Prayer(
                              name_Azkar: "دعاهای مسنون",
                              shar_Azkar: "احادیث صحیح و مستند",
                              icon_Azkar: Icons.book_rounded),
                          Prayer(
                              name_Azkar: "دعاهای مسنون",
                              shar_Azkar: "احادیث صحیح و مستند",
                              icon_Azkar: Icons.book_rounded),
                          Prayer(
                              name_Azkar: "دعاهای مسنون",
                              shar_Azkar: "احادیث صحیح و مستند",
                              icon_Azkar: Icons.book_rounded),
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
