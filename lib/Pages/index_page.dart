import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/drawer_page.dart';
import 'package:flutter_app/Pages/index_body_page.dart';
import 'package:flutter_app/Pages/text_field_page.dart';
/**
 * @Author: Luke
 * @Date: 2019/3/16 15:54
 * @Sign: Cherish life and keep away from bugs!
 * @Project: flutter_app
 */

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Night Sky'),
        //关闭阴影效果
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          IndexBody(),
          TextFieldPage(),
        ],
      ),
      drawer: DrawerPage(),
    );
  }
}
