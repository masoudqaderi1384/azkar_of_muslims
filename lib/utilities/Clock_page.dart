import 'package:flutter/material.dart';

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
                          Text(
                            "ساعت",
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Afghan',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[600],
                                  borderRadius: BorderRadius.circular(12.0)),
                              padding: EdgeInsets.all(12.0),
                              child: IconButton(
                                icon: Icon(Icons.menu_rounded,
                                    color: Colors.white),
                                onPressed: () {
                                  setState(() {});
                                },
                              )),

                        ],
                      ),


                    ],
                  ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0)),
                      ),
                      padding: EdgeInsets.all(25.0),
                      child: Column(children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[700],
                              borderRadius:
                              BorderRadius.circular(10.0)),
                          height: 10,
                          width: 75,
                        ),
                      ]),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
