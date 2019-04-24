// Step 3 - Add a stateful widget

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_app/Animation/open_animation.dart';
import 'package:flutter_app/HttpRequestImageDemo/refesh_image_demo.dart';
import 'package:flutter_app/RandomWordsDemo/random_words_demo.dart';
import 'package:flutter_app/UiPagesTest/uiTest.dart';
import 'package:flutter_app/UiPagesTest/cardTest.dart';
import 'package:flutter_app/UiPagesTest/bottomNavgtionBar.dart';
import 'package:flutter_app/UiPagesTest/bottomAppBar.dart';
import 'package:flutter_app/KeepAliveDemo/savePagesState.dart';
import 'package:flutter_app/Widget/dialog_widget.dart';

void main() => runApp(
      new MyApp()
 );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: new MaterialApp(
        //导航栏 名字
        title: "Night Sky",
        debugShowCheckedModeBanner: false,
        //App 样式
        theme: new ThemeData(
            primaryColor: Colors.lightBlue,
            primarySwatch: Colors.lightBlue
        ),

//      home: new UiTest(),
//      home: new CardTest(),
//      home: new BottomBar(),
//      home: new RandomWords(),
      home: new CustomBottomAppBar(),
//      home: new OpenAnimation(),
//      home: new WillDemo(title: 'title'),
//        home: new RefreshImageDemo(),
      ),
    );
  }
}
