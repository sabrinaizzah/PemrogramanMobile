import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Masukkan berat badan (kg): ");
  double berat = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkan tinggi badan (meter): ");
  double tinggi = double.parse(stdin.readLineSync()!);

  if (berat <= 0 || tinggi <= 0) {
    print("Input tidak boleh nol atau negatif!");
    return;
  }

  double bmi = berat / pow(tinggi, 2);

  print("Nilai BMI: ${bmi.toStringAsFixed(2)}");

  if (bmi < 18.5) {
    print("Kategori: Kurus");
  } else if (bmi < 24.9) {
    print("Kategori: Normal");
  } else if (bmi < 29.9) {
    print("Kategori: Overweight");
  } else {
    print("Kategori: Obesitas");
  }
}
