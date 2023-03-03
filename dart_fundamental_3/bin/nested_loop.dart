void main() {
  List<String> alphabets = ['A', 'B', 'C'];
  for (int i = 1; i <= 2; i++) {
    for (String alphabet in alphabets) {
      print(i.toString() + alphabet);
    }
  }
}
