import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/icon_demo_page.dart';
/**
 * @Author: Luke
 * @Date: 2019/3/16 16:50
 * @Sign: Cherish life and keep away from bugs!
 * @Project: flutter_app
 */

class TextFieldPage extends StatefulWidget {
  @override
  TextFieldPageState createState() => new TextFieldPageState();
}

class TextFieldPageState extends State<TextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        // 取消margin的距离
        margin: EdgeInsets.all(0.0),
        height: 150.0,
        child: Column(
          //主轴 两边间隔
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextDemo(),
            IconDemo()
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(TextFieldPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}


class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        //获取上级容器
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(
          left: 18.0,
          right: 18.0,
          bottom: 20.0,
          top: 2.0,
        ),
        child: TextField(
          decoration:
              InputDecoration(hintText: '点击输入文本', border: InputBorder.none),
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
          ),
          maxLines: 999,
          cursorColor: Colors.grey,
          cursorWidth: 2.0,
        ),
      ),
    );
  }
}
