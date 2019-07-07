/**
 * 类学习
 */
class ClassLearn {
  //前面加_为私有
  String _name;
  num _age;
  /* 1.构造函数 */
  // ClassLearn(this._name);
  /* 2. 命名构造函数 .命名名称 */
  ClassLearn.nowObj() {
    print("这是一个命名构造函数");
  }

  /* 3. 初始化列表,给属性一个初始值 */
  ClassLearn()
      : _name = "北鼻",
        _age = 7 {
    print("这是一个初始化列表构造函数");
  }

  /* 4. 方法 */
  void field() {
    //访问属性，使用$符号或者${this.}
    print('$_name 或者 ${this._name}  age = $_age');
  }

  /* 5. get 没有小括号 ,使用当成属性调用方式来使用即可*/
  get nameG {
    return this._name;
  }

  /* 6. set 使用当成属性调用方式来使用,小括号里的形参可以带类型也可不带 */
  set nameS(value) {
    this._name = value;
  }

  set ageS(ageV){
    this._age=ageV;
  }
}
