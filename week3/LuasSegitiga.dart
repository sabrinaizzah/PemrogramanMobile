import 'dart:io';

void main() {
  String ulang = "y";

  while (ulang == "y") {
    print("=== Hitung Luas Segitiga ===");

    stdout.write("Masukkan alas segitiga: ");
    double alas = double.parse(stdin.readLineSync()!);

    stdout.write("Masukkan tinggi segitiga: ");
    double tinggi = double.parse(stdin.readLineSync()!);

    if (alas <= 0 || tinggi <= 0) {
      print("Alas dan tinggi harus lebih dari 0.");
    } else {
      double luas = 0.5 * alas * tinggi;
      print("Luas segitiga adalah: $luas");
    }

    stdout.write("Apakah ingin menghitung lagi? (y/n): ");
    ulang = stdin.readLineSync()!;
    print("");
  }

  print("Program selesai.");
}
