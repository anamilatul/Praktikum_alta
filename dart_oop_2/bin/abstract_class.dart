import 'constructor.dart';

abstract class Hewan {
  reproduksi() {
    print('Tidak diketahui');
  }

  bernafas() {
    print('Tidak diketahui');
  }
}

class Kambing extends Hewan {
  @override
  reproduksi() {
    print('melahirkan');
  }

  @override
  bernafas() {
    print('paru-paru');
  }
}

void main() {
  var k1 = Kambing();
  k1.reproduksi();
  k1.bernafas();

  //example error
  // var h1 = Hewan();
}
