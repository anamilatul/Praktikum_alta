import 'library.dart';

void main() {
  var b = new B();
  b.setPrivateValue = 9;
  print(b.getPrivateValue);
}

class B extends A {}
