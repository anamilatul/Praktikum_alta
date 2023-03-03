//Contoh penggunaan Future
// void P1() {
//   Future.delayed(Duration(seconds: 3), () {
//     print("Hai guys ini P1");
//   });
// }

// void P2() {
//   print("Hai aku P2");
// }

// void main() {
//   P1();
//   P2();
// }

Future<void> p1() async {
  await Future.delayed(Duration(seconds: 2), () {
    print("Hallo from p1");
  });
}

void p2() {
  print("Hello from p2");
}

void main() async {
  await p1();
  p2();
}
