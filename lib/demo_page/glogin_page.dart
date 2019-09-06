import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import 'package:http/http.dart' as http;

/**登陆页面 */
class GLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "鑫",
      home: LoginWidget(),
    );
  }
}

/** 登陆页面子 */
class LoginWidget extends StatelessWidget {
  String _userName;
  String _userPsw;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("登陆"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              /* 账号 */
              TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0), labelText: '请输入您的账号'),
                // decoration: null,
                onChanged: _textUserNameChange,
              ),
              /* 密码 */
              TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      labelText: '请输入您的密码'),
                  // decoration: null,
                  onChanged: _textPasswdFileChange),
              /* 登陆按钮 */
              RaisedButton(
                child: const Text('登录'),
                onPressed: _loginButtonClick,
              )
            ],
          ),
        ));
  }

/* 账号名称改变 */
  void _textUserNameChange(String strUserName) {
    print("账号改变：$strUserName");
    this._userName = strUserName;
  }

  /* 密码提交方法 */
  void _textPasswdFileChange(String strPassValue) {
    print("密码：$strPassValue");
    this._userPsw = strPassValue;
  }

  /* 登录方法点击 */
  void _loginButtonClick() {
    print('点击登录 , username : $_userName , userPsw : $_userPsw');
    startLogin();
  }

  void startLogin() async {
    final reponse = await http.get("https://jsonplaceholder.typicode.com/posts/1");
    print('login  response : ${reponse.body}');
  }
}
