import 'package:flutter/material.dart';
import 'keep_alive_demo.dart';
/**
 * @Author: Luke
 * @Date: 2019/3/16 10:37
 * @Sign: Cherish life and keep away from bugs!
 * @Project: flutter_app
 */

class KeepAliveDemo extends StatefulWidget {
  @override
  KeepAliveDemoState createState() => new KeepAliveDemoState();
}

// with 混入（类似多重继承？）
class KeepAliveDemoState extends State<KeepAliveDemo>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KeepAliveDemo'),
        bottom: TabBar(
            controller: _controller,
            tabs: [
              Tab(icon: Icon(Icons.directions_bike )),
              Tab(icon: Icon(Icons.directions_bus)),
              Tab(icon: Icon(Icons.directions_boat))
            ]
        ),
      ),
      body: TabBarView(
          controller:_controller,
          children: <Widget>[
            MyHomePage(),
            MyHomePage(),
            MyHomePage(),
          ]
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //vsync 垂直
    // 初始化 TabController
    _controller = TabController(length: 3, vsync: this);
  }

  // 销毁方法
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(KeepAliveDemo oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
