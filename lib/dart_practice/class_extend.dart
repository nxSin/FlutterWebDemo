import 'package:flutter_web_demo/dart_practice/abs_class.dart';

class Person {
  String _name;
  Person(this._name);
  void work() {
    print('person work');
  }
}

class Beibi extends Person {
  String age;
  //利用参数列表方式，将name给传给超类
  Beibi(String name) : super(name);
  /* 复写 */
  @override
  void work() {
    print('Beibi work');
  }
}

/** 接口与java中类似，使用implements方式来实现，只是没有对应的超类没有interface这种定义，可以为普通类也可以为abstract类
 * 只要使用了implements来实现一个类，就得复写其内部所有，属性+方法。故一般我们使用的时候使用abstract来定义超类比较好，而且在abstract类
 * 里也不要有实现方法，全都用抽象方法，类似interface那样习惯
 */
class BeibiImpl implements Person {
  @override
  String _name = "BeibiImpl";
  BeibiImpl(this._name);
  @override
  void work() {
    print('$_name work');
  }
}

/**实现的方式，父类最好为一个抽象类且都是抽象方法，当成java的接口来用 */
class Cat implements Animal {
  @override
  void eat() {
    print('cat eat');
  }

  @override
  void work() {
    print('cat work');
  }
}

/* mixins来实现类似多继承的方式
1. mixins的类不能继承其他类，只能是Object的子类
2. 作为mixins的类不能有构造方法
3. 一个类可以mixins多个mixins类
4. mixins不是继承，也不是实现接口，是Dart中一种全新的特性 */

class AMix {
  String nameA = "名称A";
  void printInfo() {
    print(nameA);
  }
}

class BMix {
  String nameB = "名称B";
  void printInfo() {
    print(nameB);
  }
}

/**采用with来多实现多继承,如果继承类中有相同的属性或方法，以定义在最后的一个为准 */
class CMix with AMix, BMix {}
