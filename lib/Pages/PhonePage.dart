import 'package:flutter/material.dart';
import 'package:flutter_app/UiPagesTest/cardTest.dart';
/**
 * @Author: Luke
 * @Date: 2019/3/12 15:04
 * @Sign: Cherish life and keep away from bugs!
 * @Project: flutter_app
 */

class PhonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone'),
      ),
      body: Center(
        child: CardTest(),
      ),
    );
  }
}
