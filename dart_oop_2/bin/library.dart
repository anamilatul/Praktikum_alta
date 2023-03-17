class A {
  int _private = 8;

  int get getPrivateValue {
    return _private;
  }

  set setPrivateValue(int value) {
    _private = value;
  }
}
