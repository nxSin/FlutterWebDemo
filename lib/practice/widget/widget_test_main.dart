import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web_demo/practice/widget/widget_text.dart' as widget_text_demo;
import 'package:flutter_web_demo/practice/widget/widget_container.dart'
    as widget_container_demo;
import 'package:flutter_web_demo/practice/widget/widget_image.dart'
    as widget_image_demo;
import 'package:flutter_web_demo/practice/widget/widget_listview.dart'
    as widget_list_demo;
import 'package:flutter_web_demo/practice/widget/widget_gridview.dart'
    as widget_gridview_demo;
import 'package:flutter_web_demo/practice/widget/widget_row.dart' as widget_row_demo;
import 'package:flutter_web_demo/practice/widget/widget_column.dart'
    as widget_column_demo;
import 'package:flutter_web_demo/practice/widget/widget_stack.dart'
    as widget_stack_demo;
import 'package:flutter_web_demo/practice/widget/widget_card.dart' as widget_card_demo;
import 'package:flutter_web_demo/practice/widget/widget_navigator.dart'
    as widget_navigator_demo;
import 'package:flutter_web_demo/practice/widget/widget_navigator_parameter.dart'
    as widget_navigator_parameterdemo;
import 'package:flutter_web_demo/practice/widget/widget_navigator_parameter_back.dart'
    as widget_navigator_parameter_back_demo;
import 'package:flutter_web_demo/practice/widget/widget_markdown.dart'
    as widget_markdown_demo;

/**
 * widget测试入口
 */
class MyWidgetTestApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '鑫',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      //Text
      // home: widget_text_demo.TextHomePage(title: 'Flutter Text Home Page'),
      //容器container
      // home: widget_container_demo.TextHomePage(title: 'Flutter Demo Home Page'),
      //image
      // home: widget_image_demo.HomePage(title: 'Flutter Image Demo Home Page'),
      //ListView
      // home: widget_list_demo.HomePage(title: 'Flutter ListView Demo Home Page'),
      //GridView
      // home: widget_gridview_demo.HomePage(title: 'Flutter GridView Demo Home Page'),
      //Row
      // home: widget_row_demo.HomePage(title: 'Flutter Row Demo Home Page'),
      //Column
      // home: widget_column_demo.HomePage(title: 'Flutter Column Demo Home Page'),
      //Stack
      // home: widget_stack_demo.HomePage(title: 'Flutter Stack Demo Home Page'),
      //Card
      // home: widget_card_demo.HomePage(title: 'Flutter Card Demo Home Page'),
      //Navigator
      // home:
      // widget_navigator_demo.HomePage(title: 'Flutter Navigator Demo Home Page'),
      //Navigator 带参数
      // home: widget_navigator_parameterdemo.HomePage(
      // title: 'Flutter Navigator Parameter Demo Home Page'),
      //Navigator带参数返回
      // home: widget_navigator_parameter_back_demo.HomePage(
      //     title: 'Flutter Navigator Parameter Back Home Page'),

      //markdown测试
      home: widget_markdown_demo.MarkDownTestPage(
          title: 'Flutter markdown Home Page'),
    );
  }
}
