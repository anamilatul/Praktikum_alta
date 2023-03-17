class Person {
  String _name; // private property

  Person(this._name);

  void _printName() {
    // private method
    print(_name);
  }

  void introduce() {
    print('Hello, my name is ${_name}.');
  }
}

void main() {
  var person = Person('John');
  person.introduce();
  person._name =
      'Bob'; // Error: The setter '_name' isn't defined for the class 'Person'.
  person
      ._printName(); // Error: The method '_printName' isn't defined for the class 'Person'.
}
