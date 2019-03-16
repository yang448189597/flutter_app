import 'package:flutter/material.dart';
import 'package:flutter_app/UiPagesTest/uiTest.dart';
/**
 * @Author: Luke
 * @Date: 2019/3/12 15:03
 * @Sign: Cherish life and keep away from bugs!
 * @Project: flutter_app
 */


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: MyUiDemo(),
      ),
    );
  }
}
