import 'package:flutter_web/material.dart';
import 'package:flutter_web_demo/third/markdown/flutter_markdown.dart';

const String _markdownData = """# Markdown Example
Markdown allows you to easily include formatted text, images, and even formatted Dart code in your app.

## Styling
Style text as _italic_, __bold__, or `inline code`.

- Use bulleted lists
- To better clarify
- Your points

## Links
You can use [hyperlinks](hyperlink) in markdown

## Images

You can include images:

![Flutter logo](https://flutter.io/images/flutter-mark-square-100.png#100x100)

## Markdown widget

This is an example of how to create your own Markdown widget:

    new Markdown(data: 'Hello _world_!');

## Code blocks
Formatted Dart code looks really pretty too:

```
Enjoy!
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