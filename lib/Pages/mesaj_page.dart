import 'package:flutter/material.dart';

class MesajPage extends StatefulWidget {
  @override
  _MesajPageState createState() => _MesajPageState();
}

class _MesajPageState extends State<MesajPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(
          "Mesajlarım",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
