// ignore_for_file: public_member_api_docs, sort_constructors_first
// void main() async {
//   print('A');
//   Future.delayed(Duration(seconds: 5), () {
//     print('B');
//   });
//   print('C');
//   Future.delayed(Duration(seconds: 5), () {
//     print('D');
//   });
//   print('E');
// }

// import 'dart:io';

// void main() {
//   stdout.write('Masukkan nilai a : ');
//   int a = int.parse(stdin.readLineSync()!);
//   stdout.write('Masukkan nilai b : ');
//   int b = int.parse(stdin.readLineSync()!);
//   jumlah(a, b);
// }

// void jumlah(a, b) {
//   return a + b;
// }

//1 Maret

// void main() {
//   List<dynamic> list = [
//     3,
//     'String',
//     0.5,
//     {'key': 'value'}
//   ];
//   print(list);
//   list.add(4);
//   print(list);
//   list[4] = 3;
//   print(list);
//   list.remove(3);
//   list.removeAt(4);
//   print(4);

//   Set<dynamic> set = {
//     3,
//     'String',
//     0.5,
//     {'key': 'value'}
//   };
// }

// import 'dart:collection';

// void main() {
//   Queue<int> queue = Queue();
//   queue.add(1);
//   queue.add(2);
//   queue.add(3);

//   print(queue);
//   print(queue.removeFirst());
// }

//persegi & segitiga,
//dia bisa menghitung luas dan keliling

class BangunDatar {
  double panjang = 0;
  double lebar = 0;
  double alas = 0;
  double tinggi = 0;

  double luasPersegi() {
    return panjang * panjang;
  }

  double luasPersegiPanjang() {
    return panjang * lebar;
  }

  double luasSegitiga() {
    return 0.5 * alas * tinggi;
  }
}

void main() {
  // BangunDatar persegi = BangunDatar();
  // persegi.panjang = 5;
  // print("Luas persegi: ${persegi.luasPersegi()}");

  // BangunDatar persegiPanjang = BangunDatar();
  // persegiPanjang.panjang = 6;
  // persegiPanjang.lebar = 4;
  // print("Luas persegi panjang: ${persegiPanjang.luasPersegiPanjang()}");

  // BangunDatar segitiga = BangunDatar();
  // segitiga.alas = 10;
  // segitiga.tinggi = 8;
  // print("Luas segitiga: ${segitiga.luasSegitiga()}");
}
