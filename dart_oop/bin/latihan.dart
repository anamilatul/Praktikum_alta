//SoalPrioritas1.1
class Hewan {
  int berat;
  //tambahan property
  String namahewan;
  Hewan(
    this.berat,
    this.namahewan,
  );
}

//SoalPrioritas1.2
class Mobil {
  int kapasitas;
  List<Hewan> muatan = [];
  Mobil({
    required this.kapasitas,
  });

  void tambahMuatan(Hewan hewan) {
    int totalBerat =
        muatan.fold(0, (previousValue, hewan) => previousValue + hewan.berat);
    if (totalBerat + hewan.berat <= kapasitas) {
      muatan.add(hewan);
      print(
          'Hewan ${hewan.namahewan} dengan berat ${hewan.berat} berhasil ditambahkan pada mobil');
    } else {
      print(
          'Mohon maaf, ${hewan.namahewan} tidak berhasil ditambahkan! Mobil sudah penuh');
    }
  }
}

void main() {
  Mobil mobilku = Mobil(kapasitas: 100);
  mobilku.tambahMuatan(Hewan(30, 'Kuda'));
  mobilku.tambahMuatan(Hewan(60, 'Kijang'));
  mobilku.tambahMuatan(Hewan(30, 'Uler'));
  // print("Total muatan: ${mobilku.muatan.length}");
  print(
      "Total berat muatan hewan yang berhasil ditampung : ${mobilku.muatan.fold(0, (previousValue, hewan) => previousValue + hewan.berat)}");
  // Hewan hewan1 = Hewan(berat: 30, namahewan: 'Kura-kura');
  // Hewan hewan2 = Hewan(berat: 60, namahewan: 'Kijang');
}
