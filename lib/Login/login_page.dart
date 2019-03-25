import 'package:flutter/material.dart';
import 'package:flustars/flustars.dart';
/**
 * @Author: Luke
 * @Date: 2019/3/18 11:43
 * @Sign: Cherish life and keep away from bugs!
 * @Project: flutter_app
 */

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  // step 1 定义账号，密码的焦点
  FocusNode _accountFocusNode, _pwdFocusNode;
  // step 2 定义textEditingController
  TextEditingController _accountController, _pwdController;

  // step 初始化
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _accountFocusNode = FocusNode();
    _pwdFocusNode = FocusNode();
    _accountController = TextEditingController();
    _pwdController = TextEditingController();
  }

  // step 4 脚手架
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 兼容屏幕（防止刘海屏和底部导航区域遮挡）
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 80.0,
            ),
            Center(
              child: Text(
                'Night Sky',
                style: TextStyle(fontSize: 35.0),
              ),
            ),
            _paddingAccount(),
            _paddingPwd(),
            _buttonLogin(),
          ],
        ),
      ),
    );
  }

  Widget _paddingAccount() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        child: TextField(
          decoration: InputDecoration(labelText: '账号'),
          focusNode: _accountFocusNode,
          controller: _accountController,
          textInputAction: TextInputAction.next,
          onSubmitted: (input) {
            // 取消焦点
            _accountFocusNode.unfocus();
            // 点击提交之后 将焦点传入pwd
            FocusScope.of(context).requestFocus(_pwdFocusNode);
          },
        ),
      ),
    );
  }

  Widget _paddingPwd() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        child: TextField(
          focusNode: _pwdFocusNode,
          controller: _pwdController,
          // 模糊文本
          obscureText: true,
          textInputAction: TextInputAction.done,
          onSubmitted: (input) {
            _pwdFocusNode.unfocus();
          },
          decoration: InputDecoration(labelText: '密码'),
        ),
      ),
    );
  }

  void getSceenHeight(){
   double height = ScreenUtil.getScreenH(context);
  }

  Widget _buttonLogin() {
    return ButtonBar(
      children: <Widget>[
        RaisedButton(
          onPressed: () {

          },
          child: Text("登录"),
        ),
      ],
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(LoginPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
