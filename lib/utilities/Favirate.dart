import 'package:flutter/material.dart';

class Favirate extends StatefulWidget {
  const Favirate({Key? key}) : super(key: key);

  @override
  State<Favirate> createState() => _FavirateState();
}
class _FavirateState extends State<Favirate> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[800],
        body: Center(child: Text("Favorite")),
      ),
    );
  }
}
