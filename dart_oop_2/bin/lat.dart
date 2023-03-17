// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Kendaraan {
  String tipe;
  Kendaraan({
    required this.tipe,
  });

  berjalan() {
    print('gas');
  }
}

// class Mobil extends Kendaraan {

// }
