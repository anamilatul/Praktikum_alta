void intro() {
  print("Hallo");
}

//function with parameter
void cetak(String text) {
  print(text);
}

// function with return
int jumlah(int a, int b) {
  return a + b;
}

void main() {
  intro();
  cetak("Selamat datang");

  var hasil = jumlah(1, 2);
  print(hasil);
}
