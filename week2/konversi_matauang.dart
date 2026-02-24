import 'dart:io';

void main() {
  const double usdToIdr = 15500;
  const double usdToEur = 0.92;
  const double usdToJpy = 150;
  print("===== KALKULATOR KONVERSI MATA UANG =====");
  print("1. IDR (Rupiah)");
  print("2. USD (Dollar Amerika)");
  print("3. EUR (Euro)");
  print("4. JPY (Yen Jepang)");

  stdout.write("Pilih mata uang asal (1-4): ");
  int asal = int.parse(stdin.readLineSync()!);
  stdout.write("Pilih mata uang tujuan (1-4): ");
  int tujuan = int.parse(stdin.readLineSync()!);
  stdout.write("Masukkan jumlah uang: ");
  double jumlah = double.parse(stdin.readLineSync()!);

  if (jumlah <= 0) {
    print("Jumlah uang tidak boleh nol atau negatif!");
    return;
  }
  double dalamUsd;

  switch (asal) {
    case 1: // IDR ke USD
      dalamUsd = jumlah / usdToIdr;
      break;
    case 2: // USD
      dalamUsd = jumlah;
      break;
    case 3: // EUR ke USD
      dalamUsd = jumlah / usdToEur;
      break;
    case 4: // JPY ke USD
      dalamUsd = jumlah / usdToJpy;
      break;
    default:
      print("Pilihan mata uang asal tidak valid!");
      return;
  }

  double hasil;
  switch (tujuan) {
    case 1:
      hasil = dalamUsd * usdToIdr;
      print("Hasil: ${hasil.toStringAsFixed(2)} IDR");
      break;
    case 2:
      hasil = dalamUsd;
      print("Hasil: ${hasil.toStringAsFixed(2)} USD");
      break;
    case 3:
      hasil = dalamUsd * usdToEur;
      print("Hasil: ${hasil.toStringAsFixed(2)} EUR");
      break;
    case 4:
      hasil = dalamUsd * usdToJpy;
      print("Hasil: ${hasil.toStringAsFixed(2)} JPY");
      break;
    default:
      print("Pilihan mata uang tujuan tidak valid!");
      return;
  }
}
