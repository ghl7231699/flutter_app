void test() {
  throw "这是个异常抛出";
}

int test1(int i) {
  if (i == 1) {
    //抛出具体的值
    throw "i==1";
  } else if (i == 0) {
    //抛出方法
    throw print;
  }
  return 100;
}

void main() {
  ///catch 参数
  try {
    test();
  } catch (e, s) {
    //e:抛出的异常对象
    print(e.runtimeType);
    print(e);
    //s:StackTrace:栈信息
    print(s.runtimeType);
    print(s);
  }

  ///根据不同的异常类型，进行不同的处理
  ///On TYPE catch ....

  try {
    test1(0);
  } on Exception catch (e, s) {
    print("Exception");
  } on int catch (e) {
    print("int");
  } on String catch (e) {
    print('string');
  } finally {

  }



}