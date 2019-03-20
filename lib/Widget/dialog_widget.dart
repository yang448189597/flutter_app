import 'package:flutter/material.dart';
/**
 * @Author: Luke
 * @Date: 2019/3/18 16:11
 * @Sign: Cherish life and keep away from bugs!
 * @Project: flutter_app
 */

class WillDemo extends StatefulWidget {

  final Widget child;
  final String title;

  const WillDemo({Key key, this.title, this.child}) : super(key: key);

  @override
  WillDemoState createState() => new WillDemoState();
}

class WillDemoState extends State<WillDemo> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Center(
            child: Text(widget.title,style: Theme.of(context).textTheme.display2,),
          ),
        ),
        onWillPop: _onWillPop);
  }

  Future<bool> _onWillPop(){
    return showDialog(
        context: context,
      builder: (context) => AlertDialog(
        title: Text('你确定要退出嘛？'),
        actions: <Widget>[
          FlatButton(
              onPressed: () => Navigator.pop(context,true),
              child: Text('是')
          ),

          FlatButton(
              onPressed: () => Navigator.pop(context,false),
              child: Text('否')
          ),
        ],
      ),
    );
  }

}