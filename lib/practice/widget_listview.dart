import 'package:flutter_web/material.dart';

/**
 * ListView
 */
class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var itemsList = new List<String>.generate(100, (i) => "小北鼻 $i");
    return new Scaffold(
      body: new Container(
        // child: new _MyStaticListView(),
        child: new _DynamicList(items: itemsList),
      ),
    );
  }
}

/**
 * 静态列表
 */
class _MyStaticListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      //方向为横向
      scrollDirection: Axis.vertical,
      children: <Widget>[
        new ListTile(
          leading: new Icon(Icons.phone),
          trailing: new Text("data1"),
        ),
        new ListTile(
          leading: new Icon(Icons.phone_android),
          trailing: new Text("data2"),
        ),
        new ListTile(
          leading: new Icon(Icons.bluetooth),
          trailing: new Text("data3"),
        ),
        new ListTile(
          leading: new Icon(Icons.blur_circular),
          trailing: new Text("data4"),
        ),
        new ListTile(
          leading: new Icon(Icons.blur_off),
          trailing: new Text("data5"),
        ),
        new ListTile(
          leading: new Icon(Icons.bluetooth_searching),
          trailing: new Text("data6"),
        ),
      ],
    );
  }
}

class _DynamicList extends StatelessWidget {
  final List<String> items;
  _DynamicList({Key key, @required this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
      //方向纵向
      scrollDirection: Axis.vertical,
      //指定item的长度
      itemCount: items.length,
      //builder方法，传入context和position
      itemBuilder: (context, position) {
        return new Text("${items[position]}");
      },
    );
  }
}
