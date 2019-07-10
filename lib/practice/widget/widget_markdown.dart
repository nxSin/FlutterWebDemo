import 'package:flutter_web/material.dart';
import 'package:flutter_web_demo/third/markdown/flutter_markdown.dart';

const String _markdownData = """Google大力推广Flutter，它主要体现在UI上的跨平台支持，从最初的Android、Ios，到现在逐步有了web、windows、linux、macos、嵌入式设备，可谓一个跨平台霸主。[Flutter官网](https://flutter.dev/docs/get-started/install/macos)

### Flutter与Dart

Flutter其使用语言Dart（google自己的语言），[为什么Flutter使用Dart？](https://hackernoon.com/why-flutter-uses-dart-dd635a054ebf),大致就是以下几条：

1. Dart支持AOT（Ahead of Time）编译：快速，可预测。同时也支持JIT（Just In Time）编译，体现在flutter的热重载中。开发时候支持JIT，完成后release打包编译采用AOT，Dart支持编译转为js，所以同时支持在移动App和web上运行
3. Dart对动画支持好，很容易达到60fps。对象分配和回收不需要锁
4. 布局不再需要xml或jsx，统一语言来布局

总之：Dart可以AOT编译或JIT,解释或转换成其他语言。Dart编译和执行特别灵活,特别快。

那么开始吧，使用前先来安装它的环境

### 一. 安装Flutter SDK

ps：由于flutter有使用到Git，所以使用者也确定一下有Git哦

很多时候用到flutter命令或者后面会使用到的其他命令，都会访问到国外的网站，如果你有稳定梯子可以不考虑，如果没有，可以参考下这里配置下[国内flutter镜像环境](https://blog.csdn.net/ddxxii/article/details/90145056)

#### 1. 下载压缩包

这里主要提到的windows和mac，linux安装也差不多，可以在官网上根据流程下载安装

* windows：

在此页面查看版本，根据需要的来

```
https://flutter.dev/docs/development/tools/sdk/releases#windows
```

* mac：

在此页面查看版本，根据需要的来

```
https://flutter.dev/docs/development/tools/sdk/releases#macos
```

#### 2. 解压

解压到想要留的地方，以mac下载的zip为例，比如我解压到资源库中，当前文章下载版本：v1.5.4

```
cd /Users/xxx/Library

unzip ~/Downloads/flutter_macos_v1.5.4-hotfix.2-stable.zip
```

#### 3. 配置环境变量

* mac和linux：

方式1. 在上一步flutter解压码目录下，比如Library目录执行：

```
 export PATH="\$PATH:`pwd`/flutter/bin"
```

方式2. 直接在base_profile文件中声明，比如mac的/User/xxx目录下的./bash_profile里声明环境变量:

```
#flutter配置
export PATH="\$PATH:/Users/xxx/Library/flutter/bin"
```

使环境变量生效

```
source /User/xxx/.bash_profile
```

查看环境变量是否生效了

```
echo \$PATH
```

输出带/flutter/bin的就对了

* windows

windows一样，在将flutter文件下载好的flutter里的bin目录路径配置到PATH中即可，比如这里windows里，flutter是解压在C盘的src目录下，那么配置环境变量到path中：

![](https://github.com/nxSin/BlogPic/blob/master/Flutter/base/flutter_windows_path_bin.png?raw=true)

#### 4. 下载特定平台开发需要的二进制文件

在把flutter sdk环境变量配置后，则可以在终端里使用flutter命令了

```
flutter precache
```

可以用flutter help precache查看帮助

```
-h, --help              Print this usage information.
-a, --all-platforms     Precache artifacts for all platforms.
-f, --force             Force downloading of artifacts.
    --[no-]android      Precache artifacts for Android development
                        (defaults to on)

    --[no-]ios          Precache artifacts for iOS developemnt
                        (defaults to on)

    --[no-]web          Precache artifacts for web development
    --[no-]linux        Precache artifacts for linux desktop development
    --[no-]windows      Precache artifacts for windows desktop development
    --[no-]macos        Precache artifacts for macOS desktop development
    --[no-]fuchsia      Precache artifacts for Fuchsia development
    --[no-]universal    Precache artifacts required for all developments
                        (defaults to on)
```

我的理解是，默认已经有了android、ios平台支持和一些通用支持，然后我想安装web的支持，就只需要敲以下命令:

```
flutter precache --web
```

然后，敲了后没有任何效果，查看flutter目录下也没有啥变化，在实际写web的时候也

```
flutter/bin/cache/artifacts/engine
```

这个目录下依旧只有android、ios、common的一些，有知道的可以分享一下

#### 5. channel切换

flutter下载的sdk有stable、dev等

```
flutter channel
```

输出：

```
Flutter channels:
  beta
  dev
  master
* stable
```

查看当前channel，当前在stable中，后面再更具体的名字可切换channel

#### 6. 升级

```
flutter upgrade
```

### 二. 环境检查

前面安装了flutter sdk和配置环境变量，在开始编码前，可以通过命令看下还有些什么需要安装的

1. 查看还有些什么依赖没添加完

```
flutter doctor
```

输出：

```
[!] Android Studio (version 3.2)
    ✗ Flutter plugin not installed; this adds Flutter specific functionality.
    ✗ Dart plugin not installed; this adds Dart specific functionality.
[!] IntelliJ IDEA Ultimate Edition (version 2017.1.3)
    ✗ Flutter plugin not installed; this adds Flutter specific functionality.
    ✗ Dart plugin not installed; this adds Dart specific functionality.
[!] VS Code (version 1.33.1)
    ✗ Flutter extension not installed; install from
      https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter
[!] Connected device
    ! No devices available
```

显示出本地有的环境，环境还需要添加的，就像这里显示的，我本地有的，AndroidStudio、VSCode、IDEA都还没有安装Flutter插件、Dart插件，也没有连接设备(ios、Android)，对应到你准备开发使用的编辑器，任选一个去安装插件进行开发即可。

2. 插件安装

AndroidStudio和IDEA在设置里的plugins里去找到flutter和Dart的插件进行安装即可，这里贴一下VSCode的插件安装

* Flutter插件

![](https://github.com/nxSin/BlogPic/blob/master/Flutter/base/vscode_flutter_plugin.png?raw=true)

* Dart 插件

![](https://github.com/nxSin/BlogPic/blob/master/Flutter/base/vscode_dart_plugin.png?raw=true)

我这里是因为已经安装好了，如果没安装，搜索到它们，然后安装即可

### 三. 第一个程序HelloWorld

这里讲flutter_web的Project

#### 1. 配置flutter web构建工具

##### (1) 下载安装webdev并配置环境变量

1. 安装

执行命令：

```
flutter pub global activate webdev
```

然后就是等待完成，如果没有科学上网，注意配置[国内flutter镜像环境](https://blog.csdn.net/ddxxii/article/details/90145056)

完成后看到下载安装成功，比如这里下载到了2.0.7版本：

![webdev下载成功图片](https://github.com/nxSin/BlogPic/blob/master/Flutter/base/vscode_flutter_web_webdev_download.png?raw=true)

2. 配置环境变量

环境变量需要配置两个，都是后面编码运行会要用到的，一个是刚下载的webdev，另外一个是dart

* mac或linux配置到base_profile里,比如：

```
#flutter webdev配置
export PATH="\$PATH:/Users/xxx/Library/flutter/.pub-cache/bin"
#dart环境配置
export PATH="\$PATH:/Users/xxx/Library/flutter/bin/cache/dart-sdk/bin"
```

使环境变量生效

```
source /User/xxx/.bash_profile
```

* windows路径也是相同的，都在前面的flutter安装路径下，找到对应的bin目录后配置到环境变量PATH中即可，这里就不贴图了

**ps：升级版本时候也可以再用这个命令来升级webdev的版本**

#### 2. 创建项目

打开命令面板，

打开方式：顶部导航栏中，查看->命令面板。或快捷键：

```
mac : command+shift+A
windows : Ctrl+shift+A
```

![创建Web工程图片](https://github.com/nxSin/BlogPic/blob/master/Flutter/base/vscode_flutter_new_project.png?raw=true)

1. 输入Flutter
2. 然后选择 New Web Project一项
3. 接下来就是输入项目名称(小写) 和 选择存储项目位置

然后等待项目创建完成，期间VSCode可能会弹框提示安装Dart package，安装即可。

#### 3. 运行项目

1. 工程结构

项目创建好后能看到如下的工程结构

![项目结构](https://github.com/nxSin/BlogPic/blob/master/Flutter/base/vscode_flutter_web_test_web_main.png?raw=true)

* lib/：我们dart代码编写的地方
* web/ ：flutter支持的web生成代码
* pubspec.yaml : 项目配置文件，配置依赖添加等

2. 运行

(1). VSCode中运行

创建好的工程就已经是HelloWorld的显示页面了，使用F5调试运行即可，直接运行快捷键参考“调试”菜单

![VScode运行webdemo](https://github.com/nxSin/BlogPic/blob/master/Flutter/base/vscode_flutter_web_test_run_vscode.png?raw=true)

这样就能看到项目运行起来了，ip为127.0.0.1，端口可能每次都不一样

(2). 命令方式运行

命令采用我们前面安装的 webdev来进行运行，好处就是可以指定ip，这样在同局域网里，其他设备也可以访问。

操作：打开终端到项目根路径下，或者直接在VSCode的终端菜单，点击新建终端，在终端里输入以下命令，则可以指定ip了，比如我们要指定ip：192.168.164.31

```
webdev serve --hostname 192.168.164.31
```

运行效果如下：

![命令运行webdemo](https://github.com/nxSin/BlogPic/blob/master/Flutter/base/vscode_flutter_web_test_run_vscode_ip.png?raw=true)

能看到ip为自己指定的ip，端口为8080，关于webdev命令，可以查看其help，发布打包也是用它打包。

3. 代码示例

**ps：在Flutter中的显示一切皆组件，查看这个HelloWorld工程就能看出来**

方式：类继承的组件，通过实现build方法，返回一个组件，这样一个组件一个组件合起来成了整个页面。直接上代码，注释在代码中：

```
/**
 * 程序入口，main方法，runApp调用组件
 */
void main() => runApp(MyApp());

/**
 * MyApp类，继承自一个无状态组件
 */
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //返回一个提供好的 MaterialApp 组件
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //内容为MyHonePage组件
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

/**
 * MyHomePage 类 继承自一个无状态组件
 */
class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    //返回脚手架组件
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      //内容为一个居中的组件，包含了我们的Hello，World
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello, World!',
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
```



将的VSCode的方式：

1. 配置依赖
2. 创建工程
3. 编写HelloWorld

* r ： 热重载
* R ： 热更新
* p ： 查看布局网格
* o ： 切换查看ios布局情况


当然如果在debug模式下，编写完后，只要ctrl+S就能热更新了
""";

class MarkDownTestPage extends StatelessWidget {
  MarkDownTestPage({Key key, this.title}) : super(key: key);
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
                appBar: new AppBar(title: const Text('Markdown Demo')),
                body: const Markdown(data: _markdownData)));
  }
}