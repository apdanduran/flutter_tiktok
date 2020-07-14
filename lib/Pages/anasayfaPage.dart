import 'package:deneme/tending.dart';
import 'package:flutter/material.dart';

class AnasayfaPage extends StatefulWidget {
  @override
  _AnasayfaPageState createState() => _AnasayfaPageState();
}

class _AnasayfaPageState extends State<AnasayfaPage> {
  int currentIndex = 0;
  PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: PageView(
          controller: pageController,
          children: <Widget>[
            Trending(),
          ],
          onPageChanged: (int index) {
            setState(
              () {
                currentIndex = index;
              },
            );
          },
        ),
      ),
      // bottomNavigationBar: bottomItems(),
    );
  }
/*
  Future<Null> _onRefresh() {
    setState(() {});
    return null;
  }*/
}
