// ignore_for_file: public_member_api_docs, sort_constructors_first
class Hewan {
  int? mata;
  int? kaki;
  Hewan() {
    mata = 0;
    kaki = 0;
  }
  reproduksi() {
    print('Tidak diketahui');
  }

  bernafas() {
    print('Tidak diketahui');
  }
}

void main() {
  var hewan = Hewan();
  print(hewan.mata);
  print(hewan.kaki);
}
