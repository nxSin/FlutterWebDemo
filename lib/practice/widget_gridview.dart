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
    var itemsList = new List<String>.generate(5, (i) => "https://github.com/nxSin/BlogPic/blob/master/Flutter/Question/windows_varable_path.png?raw=true");
    return new Scaffold(
      body: new Container(
        // child: new _MyStaticGridView(),
        child: new _DynamicList(items: itemsList),
      ),
    );
  }
}

/**
 * 静态列表
 */
class _MyStaticGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GridView.count(
      //滑动方向
      scrollDirection: Axis.horizontal,
      //多少列
      crossAxisCount: 3,
      //内边距
      padding: EdgeInsets.all(2.0),
      //纵向距离
      mainAxisSpacing: 2.0,
      //横行距离
      crossAxisSpacing: 2.0,
      //item宽高比
      childAspectRatio: 0.7,
      //列表
      children: <Widget>[
        Image.network(
            "https://github.com/nxSin/BlogPic/blob/master/Flutter/Question/windows_varable_path.png?raw=true",
            fit: BoxFit.cover),
        Image.network(
            "https://github.com/nxSin/BlogPic/blob/master/Flutter/Question/windows_varable_path.png?raw=true",
            fit: BoxFit.cover),
        Image.network(
            "https://github.com/nxSin/BlogPic/blob/master/Flutter/Question/windows_varable_path.png?raw=true",
            fit: BoxFit.cover)
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
    return new GridView.builder(
      //方向纵向
      scrollDirection: Axis.vertical,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 2.0,
        crossAxisCount: 3,
        childAspectRatio: 0.7
      ),
      //指定item的长度
      itemCount: items.length,
      //builder方法，传入context和position
      itemBuilder: (context, position) {
        return Image.network("${items[position]}",fit: BoxFit.cover);
      },
    );
  }
}
