void main() {
  /**
   * 字符串
   */
  String name = "hello dart";
  int age = 20;

  String person = "my name is $name";
  String ages = "$person my  age is $age";
  print(ages);

  String upCase = "${person.toUpperCase()}";
  print(upCase);
  //r 前缀 raw:原始
  String a1 = r"\n";
  print(a1);

  /**
   * 多行字符串的声明
   */

  String txt = """
  aaaa
  ggggg
  hhhhh
  aaa
  c
  eeeee
  """;


  /**
   * 布尔类型
   */
  bool boolean = false;


  /**
   * List 数组
   */
  List<int> list = List();
  list = [1, 2, 3, 4];
  //通过下标获取元素
  int ii = list[0];
  print('ii == $ii');

  //遍历数组
  //iter (for each)
  for (var o in list) {
    print(o);
  }
  //itar (for i)
  for (var k = 0; k < list.length; ++k) {
    var o = list[k];
  }
  list.add(4);
  print(list);
  //list 对象不可变
  //const修饰的是[1，2，3]这个对象，表示这个对象不能再添加add元素了
  List<int> list1 = const [1, 2, 3];
//  list1.add(4); // todo error
  list1 = [2, 3, 4];
  print(list1);


  //const 修饰的是变量list2，也就是引用，那么list2 就不能在引用其他的对象了，也不能进行add 操作
  //Cannot add to an unmodifiable list
  const List<int> list2 = [0, 1, 2, 3];
//  list2.add(4); //todo  error
//  list2 = [1, 2, 3, 4];// todo  编译前就会提示错误


  /**
   * 映射集合  Map
   */

  Map<int, int> map = {1: 1, 2: 2, 3: 3};
  Map map2 = {0: 0, 1: 1, 2: 2};
  print(map[1]);
  //弱没有对应的key 则返回null
  //用const声明和 list是一样的
  print(map2[3]);
  //修改map
  map[3] = 300;
  print(map[3]);
  //添加元素
  map[4] = 4;
  print(map[4]);

  //迭代器的遍历  lamda
  map.forEach((key, value) => print("$key : $value"));
  var values = map.values;
  for (var o in values) {
    print('value is $o');
  }


  /**
   * Runes：特殊字符表示类（Unicode32）
   */
  var clapping = '\u{8F8F1}'; //5个16进制，需要使用{}
  print(clapping);
  //获取16位代码单元
  var codeUnits = clapping.codeUnits;
  print(codeUnits);
  //获取Unicode代码
  var runes = clapping.runes.toList();
  print('$runes');

  //fromCharCode 根据字符码创建字符串
  print(String.fromCharCode(127079));
  print(String.fromCharCodes(clapping.runes));
  print(String.fromCharCodes([55357, 56399]));
  print(String.fromCharCode(0x1f44f));

  Runes input = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(String.fromCharCodes(input));


  /**
   * Symbols 标识符
   */
  var sa = #sasa;
  switch (sa) {
    case #A:
      break;
    case #sasa:
      print('you make right choice');
      break;
  }
}