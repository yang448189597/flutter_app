import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
/**
 * @Author: Luke
 * @Date: 2019/3/12 15:03
 * @Sign: Cherish life and keep away from bugs!
 * @Project: flutter_app
 */

class EmailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Email'),
      ),
      body: Center(
        child: RandomWords(),
      ),
    );
  }
}
