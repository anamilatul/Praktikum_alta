class Hewan {
  reproduksi() {
    print('Tidak diketahui');
  }

  bernafas() {
    print('Tidak diketahui');
  }
}

class Kambing implements Hewan {
  @override
  bernafas() {
    print('paru-paru');
  }

  @override
  reproduksi() {
    print('melahirkan');
  }
}

void main() {
  var k1 = Kambing();
  k1.bernafas();
  k1.reproduksi();

  var h1 = Hewan();
  h1.bernafas();
  h1.reproduksi();
}
