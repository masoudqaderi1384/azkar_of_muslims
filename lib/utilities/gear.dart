import 'package:azkar_of_muslims/utilities/pdf_Azkar.dart';
import 'package:flutter/material.dart';

class Gear extends StatelessWidget {
  final String name;
  final icon;
  const Gear({Key? key,
    required this.name,
    required this.icon
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.check_circle_rounded,
                color: Colors.green[800],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Afghan',
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(width: 20.0,),
                  Icon(
                    icon,
                    color: Colors.yellow[800],
                  ),
                ],
              )
            ],
          )),
    );
  }
}
