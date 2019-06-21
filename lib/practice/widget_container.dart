import 'package:flutter_web/material.dart';

/**
 *Text页面学习验证
 */
class MyTextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "鑫",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TextHomePage(
        title: "flutter demo Home Page",
      ),
    );
  }
}

class TextHomePage extends StatelessWidget {
  TextHomePage({Key key, this.title}) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var colors = Colors;
    return new Scaffold(
      //容器 Container，默认是占完整个body位置
      body: new Container(
        child: new Text(
          "Helloworld,我的小宝贝是世界上最美丽的小宝贝！",
          style: TextStyle(
              fontSize: 25.0,
              color: Color.fromARGB(255, 255, 12, 22),
              //装饰-下划线
              decoration: TextDecoration.underline,
              //装饰-下划线虚线
              decorationStyle: TextDecorationStyle.dashed),
          textAlign: TextAlign.right,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        //校准，底部靠左
        alignment: Alignment.bottomLeft,
        //容器的背景色
        // color: Color.fromARGB(255, 12, 222, 11),
        //内边距
        padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
        //外边距
        margin: EdgeInsets.all(20),
        //装饰，盒子携带多个装饰
        decoration: BoxDecoration(
          //渐变色
          gradient: new LinearGradient(
              colors: [Colors.lightBlue, Colors.greenAccent, Colors.purple]),
          //边框,上边框
          border: BorderDirectional(top: BorderSide(color: Colors.blueGrey)),
        ),
      ),
    );
  }
}
