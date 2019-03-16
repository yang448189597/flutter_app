import 'package:flutter/material.dart';
/**
 * @Author: Luke
 * @Date: 2019/3/16 16:22
 * @Sign: Cherish life and keep away from bugs!
 * @Project: flutter_app
 */

Color primaryColor = Colors.blue[600];

class IndexBody extends StatefulWidget {
  IndexBody({Key key}) : super(key: key);

  @override
  IndexBodyState createState() => new IndexBodyState();
}

class IndexBodyState extends State<IndexBody> {
  String _firstLanguage = '英语';
  String _sencondLanguage = '中文简体';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 0.5, color: Colors.grey[500]),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Material(
              color: Colors.white,
              child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      this._firstLanguage,
                      style: TextStyle(color: primaryColor),
                    ),
                    Icon(Icons.arrow_drop_down, color: primaryColor)
                  ],
                ),
              ),
            ),
          ),

          Material(
            color: Colors.white,
            child: IconButton(
              icon: Icon(Icons.compare_arrows),
              onPressed: () {},
              color: primaryColor,
            ),
          ),

          Expanded(
            child: Material(
              color: Colors.white,
              child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      this._sencondLanguage,
                      style: TextStyle(color: primaryColor),
                    ),
                    Icon(Icons.arrow_drop_down, color: primaryColor)
                  ],
                ),
              ),
            ),
          ),

        ],
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
  void didUpdateWidget(IndexBody oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
