import 'package:flutter_web/material.dart';

/**
 * Stack
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
        child: new _MyStack(),
      ),
    );
  }
}

/**
 * 重叠布局
 */
class _MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      children: <Widget>[
        new Container(
            width: 900,
            height: 900,
            //第一层为一个圆形图
            child: new CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2202252730,4053866688&fm=26&gp=0.jpg"),
            )),
        //定位组件
        Positioned(
          left: 50.0,
          top: 50.0,
          child: new Text("小宝贝"),
        ), 
        //定位组件
        Positioned(
          right: 50.0,
          bottom: 50.0,
          child: new Text("小宝贝2"),
        )
      ],
      // alignment: FractionalOffset(0.5, 1),
    );

    //居中控件
    return Container(child: new Center(child: stack));
  }
}
