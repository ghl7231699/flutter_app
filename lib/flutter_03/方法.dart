//不能表示要传递的这个方法参数，这个方法需要什么参数，返回什么
void fun(Function f) {
  print("hello  flutter");
}

//定义一个类型：F 这个F类型其实就是一个方法，接受两个int类型的参数，返回void
typedef void F(int i, int j);

void fun2(F f) {
  f(1, 2);
}


///java中使用接口作为回调 Dart中可以直接使用回调
typedef void OnClick();

class Button {
  void setOnClickListener(OnClick listener) {
    listener();
  }
}

void main() {
  Function function = fun;
  function((int a, int b) {
    return 1 + 2;
  });
  fun2((int a, int b) {
    print('$a$b');
  });
}