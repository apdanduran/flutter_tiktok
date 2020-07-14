import 'package:flutter/material.dart';

class KesfetPage extends StatefulWidget {
  @override
  _KesfetPageState createState() => _KesfetPageState();
}

class _KesfetPageState extends State<KesfetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(
          "Arama",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
