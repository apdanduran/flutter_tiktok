import 'package:flutter/material.dart';

class PaylasPage extends StatefulWidget {
  @override
  _PaylasPageState createState() => _PaylasPageState();
}

class _PaylasPageState extends State<PaylasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(
          "Paylas Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
