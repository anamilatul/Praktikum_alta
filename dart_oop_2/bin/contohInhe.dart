class Kendaraan {
  String merek = '';
  void berhenti() {
    print('Cara berhenti dengan direm dong');
  }
}

class Sepeda extends Kendaraan {
  String seri = '';
  void showType() {
    print('merek : $merek , seri : $seri');
  }
}

void main() {
  var sepeda = Sepeda();
  sepeda.merek = 'polygon';
  sepeda.seri = 'A21';
  sepeda.showType();
  sepeda.berhenti();
}
