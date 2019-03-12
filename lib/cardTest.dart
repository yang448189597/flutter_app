/**
 * @Author: Luke
 * @Date: 2019/3/9 15:54
 * @Sign: Cherish life and keep away from bugs!
 * @Project: flutter_app
 */
import 'package:flutter/material.dart';


class CardTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    // ignore: expected_token
    final textStyle = new TextStyle(fontWeight: FontWeight.w500);
    final iconColor = Colors.blueAccent;

    var card = new SizedBox(
      height: 210.0,
      child: new Card(
        child: new Column(
          children: <Widget>[
            //
            new ListTile(
              title: new Text(
                '1625 Main Stree',
                style: textStyle,
              ),
              subtitle: new Text('My City CA 99984'),
              leading: new Icon(
                Icons.restaurant_menu,
                color: iconColor,
              ),
            ),
            //  分割线
            new Divider(),
            new ListTile(
              title: new Text(
                '(408) 555-1212)',
                style: textStyle,
              ),
              leading: new Icon(Icons.contact_phone, color: iconColor),
            ),
            new ListTile(
              title: new Text(
                'costa@example.com',
                style: textStyle,
              ),
              leading: new Icon(Icons.contact_mail, color: iconColor),
            ),
          ],
        ),
      ),
    );


//    return MaterialApp(
//      title: 'Card demo',
//      home: Scaffold(
//          appBar: AppBar(
//            title: Text('Card demo'),
//          ),
//          body: card
//      ),
//    );

      return Scaffold(
        body: card,
      );
  }
}
