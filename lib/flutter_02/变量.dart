void main() {
  final i = 1;
  const j = 2;
  if (i is int) {
    print("i is int");
  }

  int a = 0x00ffffffffffff00;
  int x = 0xffff;
  print(x);
  print(a);

  int b = 1;
  print(b.bitLength);
  int c = 10;
  print(c.bitLength);
}
