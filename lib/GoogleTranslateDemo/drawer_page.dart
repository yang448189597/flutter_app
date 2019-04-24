import 'package:flutter/material.dart';
/**
 * @Author: Luke
 * @Date: 2019/3/16 15:56
 * @Sign: Cherish life and keep away from bugs!
 * @Project: flutter_app
 */

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('Luke'),
          accountEmail: Text('448189597@qq.com'),
          currentAccountPicture: null,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('images/lakers.jpeg')
            ),
          ),
        ),
        ListTile(
          title: Text('首页',style: TextStyle(color: Colors.blue),),
          leading: Icon(Icons.home,color: Colors.blue),
          onTap: () {},
        ),
        ListTile(
          title: Text('翻译',style: TextStyle(color: Colors.blue),),
          leading: Icon(Icons.drafts,color: Colors.blue),
          onTap: () {},
        ),
        ListTile(
          title: Text('离线翻译',style: TextStyle(color: Colors.blue),),
          leading: Icon(Icons.send,color: Colors.blue,),
          onTap: () {},
        ),
        ListTile(
          title: Text('设置',style: TextStyle(color: Colors.blue),),
          leading: Icon(Icons.settings,color: Colors.blue),
          onTap: () {},
        ),
      ],
    ));
  }
}
