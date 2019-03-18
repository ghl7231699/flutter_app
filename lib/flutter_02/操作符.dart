void main() {
  /**
   * 类型判断操作符
   */
  num j = 1;
  //类型转换，不支持Java的:(int)强转写法
  int i = j as int;

  Object i1 = 1;
  //没有java中的instance of  使用is 代替
  if (i1 is int) {
    print("是int类型的");
  }
  //不属于int类型则为 is!
  if (i is! String) {
    print('i 不是字符串');
  }

  /**
   * 赋值操作符
   */
  String k;
  //保证后续使用一定不为null
  if (null == k) {
    k = '123';
  }

  //??= 安全赋值，如果k有值，不进行任何操作，如果没值则赋值456
  k ??= "456";
  print('$k');

  /**
   * 条件表达式
   */

  k = null;
  var v = k ?? "789";
  print('$v');

  /**
   * 级联操作符
   */
  new Builder()
    ..a()
    ..b();


  /**
   * 安全操作符
   */
  String str;
  //如果str为null 就返回null
  str ??= "1111";
  print(str?.length);
}

class Builder {
  void a() {}

  void b() {}
}



