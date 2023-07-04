import 'package:azkar_of_muslims/utilities/azkar.dart';
import 'package:azkar_of_muslims/utilities/preyer_motion.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey.shade200,
        color: Colors.blue.shade800,
        animationDuration: Duration(milliseconds: 300),
        height: 60.0,
        items: <Widget>[
          FaIcon(FontAwesomeIcons.house, color: Colors.grey.shade200,),
          FaIcon(FontAwesomeIcons.solidClock, color: Colors.grey.shade200,),
          FaIcon(FontAwesomeIcons.solidCalendarCheck, color: Colors.grey.shade200,),
          FaIcon(FontAwesomeIcons.solidCompass, color: Colors.grey.shade200,),
          FaIcon(FontAwesomeIcons.solidHeart, color: Colors.grey.shade200,),
        ],
        onTap: (index) {
          setState(() {
            print(index);
          });
        },
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
                      SizedBox(width: 20,),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12.0)),
                        padding: EdgeInsets.all(12.0),
                        child: GestureDetector(
                          child: Icon(
                            Icons.menu_rounded,
                            color: Colors.white,
                          ),
                          onTap: (){
                            setState(() {
                              print("a");
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
                      Icon(
                        Icons.more_horiz_rounded,
                        color: Colors.white,
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
                  Preyer_table(),
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
    );
  }
}
