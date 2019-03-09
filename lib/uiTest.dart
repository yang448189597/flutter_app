/**
 * @Author: Luke
 * @Date: 2019/3/8 16:50
 * @Sign: Cherish life and keep away from bugs!
 * @Project: flutter_app
 */

import 'package:flutter/material.dart';

// Demo 2
class UiTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      //导航栏 名字
      title: "UiDemo app",
      //App 样式
      theme: new ThemeData(primaryColor: Colors.orange),
      home: new MyUiDemo(),
    );
  }
}

class MyUiDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // tittle
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Los Angeles Lakers',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  '美国，加利福尼亚州，洛杉矶市,斯台普斯球馆',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.orange[500],
          ),
          new Text('41'),
        ],
      ),
    );

    // button
    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(icon, color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    // text
    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
洛杉矶湖人队（Los Angeles Lakers）是一个位于美国加利福尼亚州洛杉矶的篮球俱乐部，1947年成立于明尼阿波利斯，1960年搬迁到了洛杉矶。湖人这个名字来源于明尼阿波利斯的别称——千湖之地，指在美国东北五大湖工作或者居住的人。由于球衣颜色的关系，湖人队又被称为“紫金军团”。
        ''',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Top lakes'),
        ),
        body: new ListView(
          children: [
            new Image.asset(
              'images/lakers.jpeg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
