// Step 3 - Add a stateful widget

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_app/RandomWordsDemo/random_words_demo.dart';
import 'package:flutter_app/UiPagesTest/uiTest.dart';
import 'package:flutter_app/UiPagesTest/cardTest.dart';
import 'package:flutter_app/UiPagesTest/bottomNavgtionBar.dart';
import 'package:flutter_app/UiPagesTest/bottomAppBar.dart';
import 'package:flutter_app/KeepAliveDemo/savePagesState.dart';

void main() => runApp(
      new MyApp()
 );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      //导航栏 名字
      title: "RandomWords app",
      //App 样式
      theme: new ThemeData(primaryColor: Colors.lightBlue),

//      home: new UiTest(),
//      home: new UiTest(),
//      home: new CardTest(),
//      home: new BottomBar(),
        home: new RandomWords(),
//      home: new CustomBottomAppBar(),
//      home: new KeepAliveDemo(),
    );
  }
}
