import 'package:flutter_web/material.dart';

/**
 * Column
 */
class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: new Container(
        child: new _MyColumn(),
      ),
    );
  }
}

/**
 * 纵向布局
 */
class _MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //居中控件
    return Center(
      //列控件
        child: new Column(children: <Widget>[
      //按钮，但是很奇怪，在web上，这个color还不起效果
      RaisedButton(
          child: Text("button1"), onPressed: () {}, color: Colors.grey),
      //扩充的布局，默认权重是1，也就是会填满剩余空间
      Expanded(
          child:
              RaisedButton(child: Text("button2"), color: Colors.blueAccent)),
      RaisedButton(child: Text("button3"), color: Colors.greenAccent),
    ]));
  }
}
