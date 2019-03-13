import 'package:flutter/material.dart';
import 'package:flutter_app/each_view_pages.dart';

class CustomBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      //导航栏 名字
      title: "ButtomBar app",
      //App 样式
      theme: new ThemeData(primaryColor: Colors.blue),
      home: new CustomBottomAppBarWeight(),
    );
  }
}

class CustomBottomAppBarWeight extends StatefulWidget {
  _CustomBottomAppBar createState() => _CustomBottomAppBar();
}

class _CustomBottomAppBar extends State<CustomBottomAppBarWeight> {
  List<Widget> _eachView;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _eachView = List();
    _eachView..add(EachView('Home'))..add(EachView('Send'));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _eachView[_index],

      //可交互浮动按钮
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return EachView('New page');
          }));
        },
        tooltip: "like",
        child: Icon(Icons.add, color: Colors.white),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                setState(() {
                  _index = 0;
                });
              },
              color: Colors.white,
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
