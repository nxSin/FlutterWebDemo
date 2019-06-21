import 'package:flutter_web/material.dart';

/**
 * 定义一个产品
 */
class Product {
  String _name; /* 商品名称 */
  String _description; /* 商品描述 */
  Product(this._name, this._description);
}

/**
 * Navigator父子页面切换
 */
class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    List<Product> products =
        List.generate(20, (i) => Product("商品 ${i + 1}", "这是第 ${i + 1} 个商品"));

    return new Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: new Container(
        //第一个页面传入产品
        child: new _ParentPage(products: products),
      ),
    );
  }
}

/**
 * 第一个页面布局
 */
class _ParentPage extends StatelessWidget {
  List<Product> products;
  _ParentPage({Key key, @required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //ListView控件
    return new ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, i) {
          Product product = products[i];
          return ListTile(
            onTap: () {
              //开启新页
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      //将当前产品信息传递给下一个页面
                      builder: (context) => new ChildPage(product: product)));
            }, //点击效果
            leading: new Text(product._name),
          );
        });
  }
}

/**
 * 子页面
 */
class ChildPage extends StatelessWidget {
  final Product product;
  ChildPage({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text(product._name)),
        body: Center(
            child: RaisedButton(
          child: Text(product._description),
          onPressed: () => {
                //pop也是退出
                Navigator.pop(context)
              },
        )));
  }
}
