class Point {
  //每个实例属性 变量都会有一个隐式的get 非final的还会有set
  num x;
  num y;

  //使用_开始命名的变量就是私有属性，相当于Java中的private
  int _z;

  int get z => _z;

  set zzzz(int z) => _z = z;

  Point(this.x, this.y) {
    Point.init();
  }

  Point.X(this.x);

  Point.Y(this.y);

  Point.init({x = 0, y = 1});

  // 初始化列表在构造函数运行前设置实例变量。
  Point.fromJson(Map jsonMap)
      : x = jsonMap['x'],
        y = jsonMap['y'] {
    print('In Point.fromJson(): ($x, $y)');
  }

  void call(int x) {
    print('x');
  }

  //运算符重载，定义+运算符的行为
  Point operator +(Point p) {
    var point = Point(1, 2);
    point.x = p.x + point.x;
    point.y = p.y + point.y;
    p.zzzz = 10;
    point.zzzz = 1;
    point.zzzz = point._z + p._z;

    return point;
  }

}