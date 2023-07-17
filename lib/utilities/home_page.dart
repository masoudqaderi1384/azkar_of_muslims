import 'package:azkar_of_muslims/utilities/azkar.dart';
import 'package:azkar_of_muslims/utilities/preyer_motion.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          child: FaIcon(FontAwesomeIcons.mosque, color: Colors.white),
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
                            time_namaz: "07:30"),
                        Preyer_table(
                            icon_namaz: Icon(
                              Icons.access_time_filled_rounded,
                              color: Colors.grey[200],
                            ),
                            name_namaz: "عصر",
                            time_namaz: "06:00"),
                        Preyer_table(
                            icon_namaz: Icon(
                              Icons.access_time_filled_rounded,
                              color: Colors.grey[200],
                            ),
                            name_namaz: "ظهر",
                            time_namaz: "01:00"),
                        Preyer_table(
                            icon_namaz: Icon(
                              Icons.access_time_filled_rounded,
                              color: Colors.grey[200],
                            ),
                            name_namaz: "نور",
                            time_namaz: "05:15"),
                        Preyer_table(
                            icon_namaz: Icon(
                              Icons.access_time_filled_rounded,
                              color: Colors.grey[200],
                            ),
                            name_namaz: "صبح",
                            time_namaz: "04:00"),
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
                              name_Azkar: "سلاح مؤمن",
                              shar_Azkar: "احادیث صحیح و مستند",
                              icon_Azkar: Icons.book_rounded),
                          Prayer(
                              name_Azkar: "پناهگاه مسلمان",
                              shar_Azkar: "احادیث صحیح و مستند",
                              icon_Azkar: Icons.book_rounded),
                          Prayer(
                              name_Azkar: "سپهر مؤمن",
                              shar_Azkar: "احادیث صحیح و مستند",
                              icon_Azkar: Icons.book_rounded),
                          Prayer(
                              name_Azkar: "احیاء دعاهای جامع نبوی",
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
