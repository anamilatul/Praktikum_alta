import 'constructor.dart';

class Kambing extends Hewan {
  @override
  reproduksi() {
    print('Melahirkan');
  }

  @override
  bernafas() {
    print('Paru-paru');
  }
}

void main() {
  var k1 = Kambing();
  k1.reproduksi();
  k1.bernafas();

  var h1 = Hewan();
  h1.reproduksi();
  h1.bernafas();
}
