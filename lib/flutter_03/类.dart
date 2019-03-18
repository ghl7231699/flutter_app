import 'package:flutter_app/flutter_03/point.dart';

void main() {
  var point = new Point(1, 2);
  var point1 = new Point(0, 1);
  var x = point.x;
  var y = point.y;

  print('$x $y');

  Point.fromJson({"x": 10, y: 20});

  point(1);

  var p = point + point1;
  print('${p.x}\n${p.y}\n${p.z}');
}