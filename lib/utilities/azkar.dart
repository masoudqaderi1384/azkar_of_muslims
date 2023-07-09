import 'package:azkar_of_muslims/utilities/pdf_Azkar.dart';
import 'package:flutter/material.dart';

class Prayer extends StatelessWidget {
  final String name_Azkar;
  final String shar_Azkar;
  final icon_Azkar;
  const Prayer({Key? key,
    required this.name_Azkar,
    required this.shar_Azkar,
    required this.icon_Azkar
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => PdfAzkar()),);
      },
      child: Padding(
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
                          name_Azkar,
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Afghan',
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          shar_Azkar,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Afghan',
                              fontWeight: FontWeight.normal,
                              color: Colors.grey[400]),
                        ),
                      ],
                    ),
                    SizedBox(width: 20.0,),
                    Icon(
                      icon_Azkar,
                      color: Colors.yellow[800],
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
