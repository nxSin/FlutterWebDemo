import 'package:flutter_web/material.dart';
// import 'package:dio/dio.dart';

class DioTestMainApp extends StatelessWidget {
  const DioTestMainApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // getHttp();
    return Container(
      child: new Text("测试网页"),
    );
  }

  void getHttp() async {
    // try {
    //   Response response = await Dio().get("http://www.google.cn");
    //   print(response);
    // } catch (e) {
    //   print(e);
    // }
  }
}
