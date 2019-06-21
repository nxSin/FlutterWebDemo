import 'package:flutter_web/material.dart';

/**
 * Navigator父子页面切换
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
        child: new _ParentPage(),
      ),
    );
  }
}

/**
 * 父页面布局
 */
class _ParentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ListView控件里包含Card
    return new ListView(
      children: <Widget>[
        Card(
            child: new ListTile(
          title: new Text("这是宝贝一"),
          subtitle: new Text("beibi 183"),
          leading: Icon(Icons.phone),
          onLongPress: () {
            //点击一下跳出新页面，跳出的新页面MaterialPageRoute自带一个返回按钮
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new ChildPage()));
          },
        )),
        Card(
            child: new ListTile(
          title: new Text("这是宝贝一"),
          subtitle: new Text("beibi 183"),
          leading: Icon(Icons.phone),
        )),
        Card(
            child: new ListTile(
          title: new Text("这是宝贝一"),
          subtitle: new Text("beibi 183"),
          leading: Icon(Icons.phone),
        )),
      ],
      scrollDirection: Axis.vertical,
    );
  }
}

/**
 * 子页面
 */
class ChildPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("ChildPage")),
        body: Center(
            child: RaisedButton(
          child: Text("data"),
          onPressed: () => {
            //pop也是退出
            Navigator.pop(context)},
        )));
  }
}
