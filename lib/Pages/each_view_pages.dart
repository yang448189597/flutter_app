import 'package:flutter/material.dart';
/**
 * @Author: Luke
 * @Date: 2019/3/13 16:57
 * @Sign: Cherish life and keep away from bugs!
 * @Project: flutter_app
 */

// 动态子页面
class EachView extends StatefulWidget {
  final String _tittle;

  EachView(this._tittle);

  @override
  _EachViewSate createState() => _EachViewSate();
}

class _EachViewSate extends State<EachView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._tittle),
      ),
      body: Center(
        child: Text(widget._tittle),
      ),
    );
  }
}
