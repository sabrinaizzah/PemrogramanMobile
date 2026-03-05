void main() {
  print("Program Menghitung Luas Segitiga");
  stdout.write("Masukkan alas: ");
  double alas = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkan tinggi: ");
  double tinggi = double.parse(stdin.readLineSync()!);

  double luas = 0.5 * alas * tinggi;

  print("Luas segitiga adalah: $luas");
}
