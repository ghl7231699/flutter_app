void main() {
  //冒泡排序
  List<int> list = [10, 14, 8, 4, 13, 110, 98, 88, 109, 0];
  List<int> list2 = [20, 34, 18, 24, 33, 11, 8, 68, 19, 0];
  var length = list.length;
  int temp;
  for (var i = 0; i < length; ++i) {
    for (var j = 0; j < length - 1 - i; ++j) {
      if (list[j] > list[j + 1]) {
        temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }

  for (var o in list) {
    print(o);
  }

  print('-------------------------');
  //选择排序
  int temp2;
  int length2 = list2.length;
  for (var i = 0; i < length2; ++i) {
    int k = i;
    for (var j = length2 - 1; j > i; --j) {
      if (list2[k] > list2[j]) {
        k = j;
      }
    }
    temp2 = list2[i];
    list2[i] = list2[k];
    list2[k] = temp2;
  }

  for (var o in list2) {
    print(o);
  }
}
