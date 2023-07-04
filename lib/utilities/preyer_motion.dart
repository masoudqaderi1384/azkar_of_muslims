import 'package:flutter/material.dart';
var design = TextStyle(fontFamily: 'Afghan', fontSize: 16, color: Colors.blue[100]);

class Preyer_table extends StatelessWidget {
  const Preyer_table({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue[600], borderRadius: BorderRadius.circular(8.0)),
      padding: EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.white,
              ),
              Text(
                'فجر',
                style: design,
              ),
              Text(
                '04:00',
                style: design,
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.white,
              ),
              Text(
                'طلوع آفتاب',
                style: design,
              ),
              Text(
                '05:15',
                style: design,
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.white,
              ),
              Text(
                'ظهر',
                style: design,
              ),
              Text(
                '12:30',
                style: design,
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.white,
              ),
              Text(
                'عصر',
                style: design,
              ),
              Text(
                '06:00',
                style: design,
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.white,
              ),
              Text(
                'شام',
                style: design,
              ),
              Text(
                '07:30',
                style: design,
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.white,
              ),
              Text(
                'خفتن',
                style: design,
              ),
              Text(
                '09:00',
                style: design,
              )
            ],
          ),
        ],
      ),
    );
  }
}
//https://youtu.be/HrFc7W7MxzE