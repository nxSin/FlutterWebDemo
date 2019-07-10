import 'dart:developer';

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

class Gester extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "鑫",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: GestureDetector(
        child: Text("flutter demo Home Page"),
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
    //设置画笔
    Paint paint = new Paint();
    paint.color = Colors.deepOrange;
    //背景画笔
    Paint paintBackground = new Paint();
    paintBackground.color = Colors.white;

/* 阴影 */
    List<Shadow> listShadow = new List<Shadow>();
    listShadow.add(new Shadow(offset: Offset(30.0, 33.0), blurRadius: 3.0));

/* 字体fallback */
    List<String> familyFallBackList = new List();
    familyFallBackList.add("TXKS");
// familyFallBackList.add("SWXS");
    return new Scaffold(
      body: new Center(
        child:  new Text(
          r'$$ 北鼻北鼻，北鼻北鼻，北鼻北鼻，北鼻北鼻，北鼻北鼻，北鼻北鼻，北鼻北鼻 北鼻北鼻，北鼻北鼻，北鼻北鼻，北鼻北鼻，北鼻北鼻，北鼻北鼻，北鼻北鼻 北鼻北鼻，北鼻北鼻，北鼻北鼻，北鼻北鼻，北鼻北鼻，北鼻北鼻，北鼻北鼻',
          style: TextStyle(
            inherit: true,
            //文字颜色
            // color: Color.fromARGB(255, 22, 212, 22),
            //背景颜色
            // backgroundColor: Colors.greenAccent,
            //文字大小
            fontSize: 25.0,
            //文字粗细程度
            fontWeight: FontWeight.w500,
            //文字风格
            // fontStyle: FontStyle.italic,
            //文字之间距离
            letterSpacing: 5.0,
            //单词之间的距离，比如文字中的Hello world
            wordSpacing: 30.0,
            //基线对齐方式
            textBaseline: TextBaseline.ideographic,
            //文本高度跨度，字体大小的倍数，比如以下为5倍，设置背景后就能看出来
            height: 5.0,
            //本地化：语言，国家
            locale: /* Localizations.localeOf(context) */ Locale('fr', 'CA'),
            //前景，比如文字颜色，如果前面color属性有设置，那么这个属性需要时null，所以使用这个属性的时候，color就不要使用了
            foreground: paint,
            //背景，比如是文字后背景，backgroundColor冲突，用这个的时候color就不能使用
            background: paintBackground,
            //阴影
            shadows: listShadow,
            //装饰：下划线
            decoration: TextDecoration.underline,
            //装饰风格：下划线虚线
            decorationStyle: TextDecorationStyle.dashed,
            //调试标签？
            debugLabel: "11111",
            //文字字体
            // fontFamily: "TXKS",
            //文字字体
            fontFamilyFallback: familyFallBackList,
            //包路径，指明存储字体文件的路径,在flutter_web里，似乎可以不用，只需要配置FontManifest.json
            // package: "assets/fonts"
          ),
          //水平方向文字从哪边开始排，比如下面右边
          textAlign: TextAlign.right,
          //文字顺序方向，比如从右到左
          textDirection: TextDirection.ltr,
          //本地化字符编码，一般不设置
          locale: Localizations.localeOf(context),
          //是否换行，默认true
          softWrap: true,
          //文字超出超出后的方式：比如常用的，在后面加...，设置了这个的时候，默认就只有一行了（可通过设置maxLines增加行）
          overflow: TextOverflow.ellipsis,
          //字体像素的倍数，比如0.5，就是在前面设置了的字体大小基础上为0.5倍
          textScaleFactor: 0.5,
          //最大行数
          maxLines: 2,
          //语义标签 ，做一个标签，如果存在则替换文本，flutter_web测试没看出啥实际效果
          semanticsLabel: 'Double dollars',
        ) ,
      ),
    );
  }
}
