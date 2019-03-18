import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/**
 * @Author: Luke
 * @Date: 2019/3/16 17:11
 * @Sign: Cherish life and keep away from bugs!
 * @Project: flutter_app
 */

class IconDemo extends StatefulWidget {
  @override
  IconDemoState createState() => new IconDemoState();
}

class IconDemoState extends State<IconDemo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(width: 10),
        ActionButton(
          title: '相机',
          icon: Icons.camera_alt,
        ),
        ActionButton(
          title: '语音',
          icon: Icons.keyboard_voice,
        ),
        ActionButton(
          title: '对话',
          icon: Icons.message,
        ),
        ActionButton(
          title: '文本输入',
          icon: CupertinoIcons.pencil,
        ),
        Container(width: 10),
      ],
    );
  }
}

class ActionButton extends StatefulWidget {
  final String title;
  final IconData icon;

  const ActionButton({Key key, this.title, this.icon})
      : super(key: key);

  @override
  State createState() => new ActionButtonState();
}

class ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      padding: EdgeInsets.only(
        left: 10.0,
        right: 10.0,
        bottom: 2.0,
        top: 2.0,
      ),
      child: Column(
        children: <Widget>[
          _displayIcon(),
          Text(
            widget.title,
            style: TextStyle(color: Colors.black,fontSize: 15.0),
          ),
        ],
      ),
    );
  }

  Widget _displayIcon() {
    if (widget.icon != null) {
      return Icon(
        widget.icon,
        color: Color(0xff3F51B5),
        size: 25.0,
      );
    }
    return null;
  }

}
