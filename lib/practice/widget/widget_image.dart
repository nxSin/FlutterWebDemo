import 'package:flutter_web/material.dart';

/**
 * image
 */
class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Container(
        //asset：资源路径下 、 file：本地文件(web目前还不支持)、network：网络
        child: new Image.network(
          "https://github.com/nxSin/BlogPic/blob/master/Flutter/Question/windows_varable_path.png?raw=true",
          color: Colors.greenAccent,
          // width: 900,
          // height: 900,
          //颜色混合模式，在web上看貌似没有效果
          colorBlendMode: BlendMode.darken,
        ),
        color: Colors.blue,
        width: 900,
        height: 900,
      ),
    );
  }
}
