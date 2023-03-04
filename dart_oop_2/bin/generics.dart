// class Hadiah<T> {
//   var isi;
//   Hadiah(T i) {
//     isi = i;
//   }
// }

// void main() {
//   var h1 = Hadiah<String>('laptop');
//   print(h1.isi);

//   var h2 = Hadiah<int>(20);
//   print(h2.isi);
// }

void cekTipe<T>(T data) {
  print(data.runtimeType);
}

void main() {
  cekTipe<String>("one");
  cekTipe<int>(1);
  cekTipe<bool>(true);
}
