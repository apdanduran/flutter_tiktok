import 'dart:convert';

import 'package:deneme/classes/tiktok.dart';
import 'package:deneme/config/api.dart';
import 'package:deneme/tiktokvideo.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/components/loader/gf_loader.dart';
import 'package:getflutter/types/gf_loader_type.dart';
import 'package:http/http.dart' as http;

class Trending extends StatefulWidget {
  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  PageController pageController;
  RequestController api = RequestController();
  List<Widget> tikTokVideos = [];

  getTrending() async {
    var cookies = await api.getCookie();
    api.setCookie(cookies);
    try {
      var response = await http.get(
        api.url,
        headers: api.headers,
      );
      Tiktok tiktok = Tiktok.fromJson(jsonDecode(response.body));
      tiktok.body.itemListData.forEach(
        (item) {
          setState(() {
            tikTokVideos.add(TikTokVideo(data: item));
          });
        },
      );
    } catch (ex) {
      print(ex);
    }
  }

  @override
  void initState() {
    super.initState();
    getTrending();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        scrollDirection: Axis.vertical,
        controller: pageController,
        children: tikTokVideos.length == 0
            ? <Widget>[
                Container(
                  color: Colors.black,
                  child: Center(
                    child: GFLoader(
                      type: GFLoaderType.circle,
                      loaderColorOne: Colors.blueAccent,
                      loaderColorTwo: Colors.black,
                      loaderColorThree: Colors.pink,
                    ),
                  ),
                )
              ]
            : tikTokVideos,
      ),
    );
  }
}
