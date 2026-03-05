import 'dart:io';

void main() {
  String ulang = "y";

  while (ulang == "y") {
    print("=== Program Menghitung Luas Segitiga ===");
    stdout.write("Masukkan alas: ");
    double alas = double.parse(stdin.readLineSync()!);

    stdout.write("Masukkan tinggi: ");
    double tinggi = double.parse(stdin.readLineSync()!);

    if (alas <= 0 || tinggi <= 0) {
      print("Input tidak valid.");
    } else {
      double luas = 0.5 * alas * tinggi;

      print("Luas segitiga adalah: $luas");
    }

    stdout.write("Hitung lagi? (y/n): ");
    ulang = stdin.readLineSync()!;
  }
}
