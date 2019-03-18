import 'package:flutter/material.dart';
import 'package:flutter_app/Const/const_page.dart';
/**
 * @Author: Luke
 * @Date: 2019/3/16 17:52
 * @Sign: Cherish life and keep away from bugs!
 * @Project: flutter_app
 */

class RecordingTranslate extends StatefulWidget {
  @override
  RecordingTranslateState createState() => new RecordingTranslateState();
}

class RecordingTranslateState extends State<RecordingTranslate> {
  List<Translate> _items = [
    Translate('title', 'subTitle', false),
    Translate('Draw', '抽屉', true),
    Translate('title', 'subTitle', true),
    Translate('title', 'subTitle', false),
    Translate('title', 'subTitle', false),
    Translate('title', 'subTitle', true),
    Translate('title', 'subTitle', false),
    Translate('title', 'subTitle', true),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _displayList(index);
        },
      ),
    );
  }

  Widget _displayList(int index) {
    return Container(
      padding: EdgeInsets.only(bottom: 2.0, left: 2.0, right: 2.0),
      child: Card(
        margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2.0))),
        child: Container(
          padding: EdgeInsets.only(
            left: 15.0,
            top: 15.0,
            bottom: 15.0,
          ),
          height: 80.0,
          child: Row(
            // 主轴
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _flexible(index),
              _collectionIcon(index)
            ],
          ),
        ),
      ),
    );
  }

  Widget _flexible(int index) {
    return Flexible(
      child: Column(
        // 向开始方向布局
        crossAxisAlignment: CrossAxisAlignment.start,
        // 主轴
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            _items[index].title,
            style: Theme.of(context).textTheme.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            _items[index].subTitle,
            style: Theme.of(context).textTheme.subhead,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }

  Widget _collectionIcon(int index) {
    return IconButton(
        icon: Icon(
          _items[index].isCollection ? Icons.star_border : Icons.star,
          color: _items[index].isCollection ? Colors.yellow[600] : Colors.grey[700],
          size: 20.0,
        ),
        onPressed: () {});
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
  void didUpdateWidget(RecordingTranslate oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
