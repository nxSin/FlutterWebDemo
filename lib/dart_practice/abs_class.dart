abstract class Animal {
  //不带方法体为抽象方法
  void eat();
  /* 普通方法 */
  void work();
}

class Dog extends Animal {
  @override
  void eat() {
    //复写
  }

  @override
  void work() {
    // TODO: implement work
  }
}