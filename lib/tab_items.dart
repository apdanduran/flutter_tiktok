import 'package:flutter/material.dart';

enum TabItem { Anasayfa, Kesfet, Paylas, Mesaj, Ben }

class TabItemData {
  final String title;
  final IconData icon;

  TabItemData(this.title, this.icon);
  static Map<TabItem, TabItemData> tumTablar = {
    TabItem.Anasayfa: TabItemData("Anasayfa", Icons.home),
    TabItem.Kesfet: TabItemData("Kesfet", Icons.search),
    TabItem.Paylas: TabItemData("Paylaş", Icons.share),
    TabItem.Mesaj: TabItemData("Mesaj", Icons.mail),
    TabItem.Ben: TabItemData("Ben", Icons.person),
  };
}
