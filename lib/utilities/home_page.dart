import 'package:azkar_of_muslims/utilities/preyer_motion.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12.0)),
                        padding: EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.menu_rounded,
                          color: Colors.white,
                        ),
                      ),
                      Column(
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
                            "دعاهای جامع نبوی",
                            style: TextStyle(
                                fontFamily: 'Afghan',
                                fontSize: 12,
                                color: Colors.blue[200]),
                          )
                        ],
                      )
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
                  padding: EdgeInsets.all(25.0),
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.more_horiz_rounded),
                          Text("اذکار نبوی",style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Afghan',
                            fontWeight: FontWeight.bold,
                            color: Colors.black),),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [

                          ],
                        )
                      ),
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
