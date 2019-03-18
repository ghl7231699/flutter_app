class Fraction {
  num x;
  num y;

  Fraction(this.x, this.y) {
    if (y == 0) {
      throw "分母不能为0！";
    } else if (x == null || y == null) {
      throw "不能为null";
    }
  }

  Fraction operator +(Fraction other) {
    Fraction fraction = new Fraction(x, y);
    fraction.x = x * other.y + y * other.x;
    fraction.y = y * other.y;
    return fraction;
  }

  Fraction operator *(Fraction f) {
    return new Fraction(x * f.x, y * f.y);
  }

  num gcd(num x, num y) {
    num z = x % y;
    return z == 0 ? y : gcd(y, z);
  }

  @override
  String toString() {
    if (x == 0) {
      return "0";
    } else if (x == y) {
      return "1";
    } else if (x.abs() == y.abs()) {
      return "-1";
    } else {
      //x>y
      //1、首先获取分子分母的最大值
      num temp;
      num a = x;
      num b = y;
      if (a < b) {
        temp = a;
        a = b;
        b = temp;
      }
      print('$a   $b');
      temp = gcd(a, b);
      print('$temp');
      return "${x / temp}/${y / temp}";
    }
  }

}

void main() {
  Fraction f1 = new Fraction(5, 3);
  Fraction f2 = new Fraction(10, 10);
  Fraction f3 = new Fraction(14, 15);

  var f = f1 + f2;
  print(f);
  print(f1);
  print(f2);
  print(f3);
}