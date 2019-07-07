/**类泛型 : 类泛型在类名后跟泛型指定，其内部的方法就不需要单独加了*/
class MethodClassGeneric<T> {
  /* 存储值 */
  T valueCach;
  void setValue(T value) {
    this.valueCach = value;
  }

  T getValute() {
    return valueCach;
  }
}

/* 方法泛型 ：在方法名称后跟一个泛型指定*/
T getValute<T>(T value) {
  return value;
}

/* 方法泛型 ：在方法名称后跟一个泛型指定*/
T setValute<T>(T value) {
  return value;
}
