import 'package:flutter/material.dart';

var design = TextStyle(fontFamily: 'Afghan', fontSize: 16, color: Colors.blue[100]);

class Preyer_table extends StatelessWidget {
  final icon_namaz;
  final name_namaz;
  final time_namaz;
  const Preyer_table( {Key? key,
    required this.icon_namaz,
    required this.name_namaz,
    required this.time_namaz
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.0),
      decoration: BoxDecoration(
          color: Colors.blue[600], borderRadius: BorderRadius.circular(12.0)),
      child: Column(
        children: [
          icon_namaz,
          Text(
            name_namaz,
            style: design,
          ),
          Text(
            time_namaz,
            style: design,
          )
        ],
      ),
    );
  }
}
//https://youtu.be/HrFc7W7MxzE