import 'package:flutter_web/material.dart';
import 'package:flutter_web_demo/demo_page/glogin_page.dart';
import 'package:flutter_web_demo/practice/widget/widget_test_main.dart';
import 'package:flutter_web_demo/practice/net/dio_test_main.dart' as net_test;/*网络*/
import 'package:flutter_web_demo/dart_practice/test_dart.dart' as dart_test;/*Dart语法*/

// import 'package:flutter_markdown/flutter_markdown.dart';

// const String _markdownData = """# Markdown Example
// Markdown allows you to easily include formatted text, images, and even formatted Dart code in your app.

// ## Styling
// Style text as _italic_, __bold__, or `inline code`.

// - Use bulleted lists
// - To better clarify
// - Your points

// ## Links
// You can use [hyperlinks](hyperlink) in markdown

// ## Images

// You can include images:

// ![Flutter logo](https://flutter.io/images/flutter-mark-square-100.png#100x100)

// ## Markdown widget

// This is an example of how to create your own Markdown widget:

//     new Markdown(data: 'Hello _world_!');

// ## Code blocks
// Formatted Dart code looks really pretty too:

// ```
// Enjoy!
// """;

// void main() {
//   runApp(new MaterialApp(
//     title: "Markdown Demo",
//     home: new Scaffold(
//       appBar: new AppBar(title: const Text('Markdown Demo')),
//       body: new Markdown(data: _markdownData)
//     )
//   ));
// }

//TextWiget测试
// void main() => runApp(MyWidgetTestApp());
/** 网络测试*/
// void main() => runApp(net_test.DioTestMainApp());

/**Dart语法*/
// void main() => runApp(dart_test.HomePage());

// void main() => runApp(MyApp());

//登陆应用
void main() => runApp(GLoginPage());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '鑫',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text(title),
    //   ),
    //   body: Center(
    //     // Center is a layout widget. It takes a single child and positions it
    //     // in the middle of the parent.
    //     child: Column(
    //       // Column is also layout widget. It takes a list of children and
    //       // arranges them vertically. By default, it sizes itself to fit its
    //       // children horizontally, and tries to be as tall as its parent.
    //       //
    //       // Invoke "debug painting" (choose the "Toggle Debug Paint" action
    //       // from the Flutter Inspector in Android Studio, or the "Toggle Debug
    //       // Paint" command in Visual Studio Code) to see the wireframe for each
    //       // widget.
    //       //
    //       // Column has various properties to control how it sizes itself and
    //       // how it positions its children. Here we use mainAxisAlignment to
    //       // center the children vertically; the main axis here is the vertical
    //       // axis because Columns are vertical (the cross axis would be
    //       // horizontal).
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         Text(
    //           'Y',
    //         ),
    //       ],
    //     ),
    //   ), // This trailing comma makes auto-formatting nicer for build methods.
    // );

    return new Container(
      child: Row(children: <Widget>[
        Expanded(
          flex: 1,
          child: new Image.asset("glgs.jpeg"),
        ),
        Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[new Text("Hell1"), new Text("你好2-1")],
            )),
      ], crossAxisAlignment: CrossAxisAlignment.start),
    );
  }
}
