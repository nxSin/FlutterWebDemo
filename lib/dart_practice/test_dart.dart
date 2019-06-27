import 'package:flutter_web/material.dart';

/**
 * Dart Test
 */
class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    //printf
    testPrintf();
    return new MaterialApp(
      title: "Dart Test",
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: new Container(
          child: new Text("这是宝贝一"),
        ),
      ),
    );
  }

  void testPrintf() {
    print('Hello World');
  }
}

/**
 * 卡片布局
 */
class _MyCard extends StatelessWidget {
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
        )),
      ],
      scrollDirection: Axis.vertical,
    );
  }
}
