import 'package:flutter_web/material.dart';
import 'package:flutter_web_demo/dart_practice/abs_class.dart';
import 'package:flutter_web_demo/dart_practice/class_extend.dart';
import 'package:flutter_web_demo/dart_practice/genericity_learn.dart' as genericTest;

import 'class_lerar.dart';

/**
 * Dart Test
 */
class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    //  testPrintf();
    // constFinal();
    /* 数据类型 */
    // dataType();

    //算数运算符
    // operatorLearn();

    //方法
    // methodTest();

    //类
    classTest();
    return new MaterialApp(
      title: "Dart Test",
      home: Scaffold(
        appBar: AppBar(
          title: Text("demo"),
        ),
        body: new Container(
          child: new Text("这是宝贝一"),
        ),
      ),
    );
  }

  /* 输出测试 */
  void testPrintf() {
    print('你好');
  }

  /* 变量声明 */
  void varObject() {
    //自动推导
    var a = 1;
    int aI = 2;
    //输出，使用$来指定变量
    print('$a , $aI');
  }

  /*
                 * Dart 常量： final 和 const 修饰符
                 * const值不变，一开始就得赋值
                 * final 可以开始不赋值，只赋值一次即可；final不仅有const的编译时常量的特性，它运行时是惰性初始化的，在运行时用到那次才初始化
                 * 
                 * 永远不改变的量，使用final和const，而不是使用var和其他类型
                 * 
                 */
  void constFinal() {
    const strName = "宝贝";
    // strName="111";
    print(strName);

    final beibiAge = 18;
    // beibiAge=19;
    print(beibiAge);

    final date = new DateTime.now();
    print("date : $date");
    //const 不能使用这种运行时的量，调用方法来赋值的时候就不能用const了，这就是final和const最大的区别
    // const dateConst = new DateTime.now();
  }

  /** 数据类型 */
  void stringDataType() {
    //字符串定义
    String beibi = "北鼻";
    var beibiV = "北鼻自动推导";

    //三个单引号支持换行
    var multLineStr = '''这是一个
                      三个单引号支持
                      换行
                      的字符串''';
    print(multLineStr);

    //三个双引号
    var multLineStr2 = """这是一个
                      三个双引号支持
                      换行
                      的字符串""";
    print(multLineStr2);

    /* 字符串拼接 */
  }

  /**bool数据类型 */
  void boolDataType() {
    bool trueData = true;
    print(trueData);
    bool falseData = false;
    print(falseData);
  }

  /**数组/集合类型 */
  void listDataType() {
    //第一种定义方式，直接[]定义
    var list = ['1', '2', '3'];
    print(list);
    print(list.length);

    //第二种方式(最好指定泛型的类型)
    var list2 = new List<String>();
    list2.add('a');
    list2.add('b');
    list2.add('c');
    list2.add('d');
    print(list2);
    print(list2.length);
    //访问
    print(list2[2]);
    /* List方法 */
    //fillRange
    list2.fillRange(1, 3, '7');
    print('fillRange 后 : ' + list2.toString());
    //join 分割，分割后按-来将没个子元素连接起来，成为一个string类型
    String strJoinBack = list2.join('-');
    print('join 后 : $strJoinBack');

    //foreach 遍历
    list2.forEach((value) {
      print('forEach value : ' + value);
    });

    //map方法用于修改集合内的数据,转换成list3
    var list3 = list2.map((value) {
      //字符串类型 * 2  为 两个字符串
      return value * 2;
    }).toList();

    print(list3);
  }

  /**map类型 */
  void mapDataType() {
    //第一种定义map的方式
    var personMap = {
      'name': '小宝贝',
      'age': 18,
    };

    print(personMap);
    //访问
    print(personMap['age']);

    //第二种定义方式：new
    var personMap2 = new Map();
    personMap2['name'] = '糖宝贝';
    personMap2['work'] = '老师';
    print(personMap2);
    print(personMap2['name']);
  }

  /**is 关键词判断类型 */
  void isKey() {
    var str = 1234;
    //判断是不是String类型
    if (str is String) {
      print("是一个String类型");
    } else if (str is int) {
      print("是一个int类型");
    }
  }

  /** 运算符学习:
               * 
               * 1. 算数运算符： 加 +  减 -  乘 *  除 / 取余 %   取整 ~/
              */
  void operatorLearn() {
    //1.
    // operatorAddDel();

    //2. 逻辑运算符
    // operatorLogic();

    //3. 赋值运算符
    // assignmentOperator();

    //4. 转换类型
    // typeChange();

    //5. 类型判空bool
    isBool();
  }

  void operatorAddDel() {
    //算数运算符
    var a = 13.2;
    int b = 5;
    //dart里的/代表精确的除法，会到小数,double类型，最多后面16位
    var c = a / b;
    var c1 = a % b;
    //取整
    var c2 = a ~/ b;
    print("c = $c , c1 = $c1 , c2 = $c2");
  }

  /**逻辑运算符 == != >= <= , ! && || */
  void operatorLogic() {
    //大部分都和C、Java差不多，主要提一下==,String类型也是直接用==
    String name = "北鼻";
    if (name == "北鼻") {
      print("相等，都为北鼻");
    }
  }

  /**
             * 1.赋值运算符 
             *  ==  ??== 
             * 2.复合赋值运算符: 
             *  += *= /= %= ~/=
             * 
             * 3.三目运算符
             * 4. ??运算符
            */
  void assignmentOperator() {
    //==与C、Java一样，提一下??=
    int b;
    //打印null，能看出，int类型并不是像java那样默认为0
    print('b = $b');
    //如果b为空的话，那么将3赋值给b
    b ??= 3;
    //没有给b赋值，那么它为null，所以上一步会给赋值为3，打印3
    print('??=3 后 b = $b');

    //复合赋值运算符，除2取整
    b ~/= 2;
    //上一步取整，这里打印为1
    print('~/=2 后 b = $b');

    //??运算符
    int a = 1;
    //如果为null那么9赋值给ac，否则赋值a给ac
    int ac = a ?? 9;
    print('ac = $ac');
  }

  /**类型转换 
             * 1. Number转为String，toString
             * 2. String转为Number，parse
            */
  void typeChange() {
    //str -> int
    String one = '1';
    print(one);
    int parseValue = int.parse(one);
    print('int.parse(one) 后 parseValue = $parseValue');
    print('parseValue is int : ' + (parseValue is int).toString());

    //int -> str

    int two = 2;
    String twoStr = two.toString();
    print('two.toString() 后 ' + twoStr);
  }

  /**判断bool */
  void isBool() {
    String str = "1234";
    if (str.isEmpty) {
      print('str空');
    }

    int a;
    if (a == null) {
      print('a为null');
    }

    //0作为分母和分子的时候，不会崩溃，结果是一个特殊值为NaN
    var b = 0 / 0;
    print("b=$b");
    if (b.isNaN) {
      print("b is NaN ，b = $b");
    }
    //0作为除数的时候，分子不为0，不会崩溃，结果是一个特殊值为isInfinite
    var b1 = 1 / 0;
    print("b1=$b1");
    if (b.isInfinite) {
      print("b1 is Infinity ，b1 = $b1");
    }
  }

  /** 数据类型 */
  void dataType() {
    // stringDataType();
    // boolDataType();
    // listDataType();
    // setDataType();
    // mapDataType();
  }

  /* Set数据类型 */
  void setDataType() {
    //体验去重
    var setData = new Set();
    setData.add("香蕉");
    setData.add("猴子");
    setData.add("香蕉");
    print(setData);

    //转换为列表
    var listData = setData.toList();
    print('转换列表后： ' + listData.toString());
  }

  /**方法测试 */
  void methodTest() {
    /*1.可选参数 b为可选的,默认值给个1*/
    int openParameter(int a, [int b = 1]) {
      print('a = $a , b = $b');
    }

    openParameter(1, 2);
    openParameter(2);

    /*2. 定义一个可以通过参数名称指定值得方法，命名参数*/
    int nameParameter(String paraOne, {age: 1, name: "北鼻"}) {
      print(paraOne.toString() + age.toString() + "岁,名字：" + name);
    }

    nameParameter("这个小宝贝的信息为：", age: 18);

    /* 匿名方法 方法没有实际的名称*/
    var printName = (String name) {
      print(name);
    };
    printName("鑫哥");

    /*4. 把方法当错参数传入*/
    void methodPara(int age) {
      print("方法当参数传入的方法被调用");
    }

    //定义一个执行方法，形参名字自定，看做是一个指向方法的名称即可
    void methodParaExe(methodF) {
      //调用传进来的方法
      methodF(1);
    }

    //调用执行方法，将前面的methodPara方法给传进去
    methodParaExe(methodPara);

    /* 箭头函数 ，类似lambda方式*/
    var list1 = [1, 2, 3, 4, 5, 6];
    list1.forEach((valute) => print(valute));

    /* 5. 自执行方法 */
    (int value) {
      print("自执行方法，接收到的参数为：" + value.toString());
    }(5);

    /* 6. 闭包 */
    closeTest() {
      //闭包第一要素:有一个函数局部变量
      int closeValueX = 1;
      //闭包第二要素：返回一个内部函数
      return () {
        print('闭包 ：closeValueX = $closeValueX');
        closeValueX++;
      };
    }

    //用一个变量来持有这个内部函数的引用，这样就会让其外部函数的局部变量不被释放
    var funCloser = closeTest();
    funCloser(); //调用
    funCloser(); //调用
    funCloser(); //调用
    funCloser(); //调用
  }

  /* 类测试 */
  void classTest() {
    //第一步
    // classTestOne();

    /*继承和实现*/
    // classTestExtendImplements();

    /*泛型 */
    generictityTest();
  }

  void classTestOne() {
    var classTestObj = new ClassLearn.nowObj();
    //set来设置名称
    classTestObj.nameS = "小宝贝";
    classTestObj.field();
    //get 来获取名称
    print('name : ${classTestObj.nameG}');
    //初始化列表
    var classTestObjP = new ClassLearn();
    //利用问号来做判断，如果为空就不会执行
    classTestObjP?.field();

    //as 类型转换
    if (classTestObjP is ClassLearn) {
      (classTestObjP as ClassLearn).field();
    }

    //.. 级联调用
    classTestObjP
      ..nameS = "宝贝"
      ..ageS = 9
      ..field();
  }

  /* 继承 、实现、Mixins*/
  void classTestExtendImplements() {
    /* 继承 */
    Person personEx = new Beibi("北鼻");
    personEx.work();

    /* 实现:实现的为带实现方法和属性的父类 */
    Person personBeibiImpl = BeibiImpl("北鼻Impl");
    personBeibiImpl.work();
    /* 实现：父类为抽象类，只有抽象方法 */
    Animal animalCat = Cat();
    animalCat.eat();
    animalCat.work();

    /* mixins方式实现多继承 */
    var cmix = CMix();
    cmix.printInfo();
  }

  /**泛型测试 */
  void generictityTest() {
    //方法泛型，在方法后指定
    var valueGet = genericTest.getValute<String>("北鼻你好");
    print(valueGet);

    var mcgobj = genericTest.MethodClassGeneric<int>();
    mcgobj.setValue(5);
    var mcgobjGetValue = mcgobj.getValute();
    print('泛型类获取出来值为：' + mcgobjGetValue.toString());
  }
}
