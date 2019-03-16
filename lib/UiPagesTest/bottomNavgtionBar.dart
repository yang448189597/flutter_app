import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/AirPlayPage.dart';
import 'package:flutter_app/Pages/EmailPage.dart';
import 'package:flutter_app/Pages/HomePage.dart';
import 'package:flutter_app/Pages/PhonePage.dart';

// Demo 2
class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      //导航栏 名字
      title: "ButtomBar app",
      //App 样式
      theme: new ThemeData(primaryColor: Colors.blue),
      home: new BottomNavigationWidget(),
    );
  }
}

class BottomNavigationWidget extends StatefulWidget {
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _bottomColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> listWidget = List();

  @override
  void initState() {
    listWidget
      ..add(HomePage())
      ..add(EmailPage())
      ..add(PhonePage())
      ..add(AirPlayPage());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: listWidget[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: _bottomColor,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: _bottomColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.email,
                  color: _bottomColor,
                ),
                title: Text(
                  'Email',
                  style: TextStyle(color: _bottomColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.phone_android,
                  color: _bottomColor,
                ),
                title: Text(
                  'Phone',
                  style: TextStyle(color: _bottomColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.airplay,
                  color: _bottomColor,
                ),
                title: Text(
                  'AirPlay',
                  style: TextStyle(color: _bottomColor),
                )),
          ],

          //  底部导航索引
          currentIndex: _currentIndex,

          //  添加底部导航的点击事件
          onTap: (int index){
            setState(() {
              // 切换页面 相对应页面的Index
              _currentIndex = index;
            });
          },
        ));
  }
}
