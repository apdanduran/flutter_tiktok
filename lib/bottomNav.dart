import 'package:deneme/Pages/anasayfaPage.dart';
import 'package:deneme/Pages/ben_page.dart';
import 'package:deneme/Pages/kesfet_page.dart';
import 'package:deneme/Pages/mesaj_page.dart';
import 'package:deneme/myCustomBottombar.dart';
import 'package:deneme/paylas_Page.dart';
import 'package:deneme/tab_items.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TabItem _currentTab = TabItem.Anasayfa;

  Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys = {
    TabItem.Anasayfa: GlobalKey<NavigatorState>(),
    TabItem.Kesfet: GlobalKey<NavigatorState>(),
    TabItem.Paylas: GlobalKey<NavigatorState>(),
    TabItem.Mesaj: GlobalKey<NavigatorState>(),
    TabItem.Ben: GlobalKey<NavigatorState>(),
  };

  Map<TabItem, Widget> tumSayfalar() {
    return {
      TabItem.Anasayfa: AnasayfaPage(),
      TabItem.Kesfet: KesfetPage(),
      TabItem.Paylas: PaylasPage(),
      TabItem.Mesaj: MesajPage(),
      TabItem.Ben: BenPage()
    };
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async =>
          !await navigatorKeys[_currentTab].currentState.maybePop(),
      child: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        child: MyCustomBottomNavigation(
          sayfaOlusturucu: tumSayfalar(),
          navigatorKeys: navigatorKeys,
          currentTab: _currentTab,
          onSelectedTab: (secilenTab) {
            if (secilenTab == _currentTab) {
              navigatorKeys[secilenTab]
                  .currentState
                  .popUntil((route) => route.isFirst);
            } else {
              setState(() {
                _currentTab = secilenTab;
              });
            }
          },
        ),
      ),
    );
  }
}
