void main() {
  String nama = "Sabrina Izzah";
  String nim = "244107060013";

  double nilaiUnikNIM = 13.0;

  List<double> hargaBarang = [50000.5, 75000.0, 25000.75, 40000.25, 30000.0];
  hargaBarang.add(nilaiUnikNIM);

  double totalAwal = hitungTotal(hargaBarang);

  String? pesanDiskon;

  double diskon = 0;

  if (totalAwal > 200000) {
    diskon = totalAwal * 0.10;
    pesanDiskon = "Diskon 10%";
  } else if (totalAwal >= 100000 && totalAwal <= 200000) {
    diskon = totalAwal * 0.05;
    pesanDiskon = "Diskon 5%";
  } else {
    diskon = 0;
    pesanDiskon = "Tidak ada diskon";
  }

  double totalAkhir = totalAwal - diskon;

  print("Nama : $nama");
  print("NIM : $nim");
  print("Total Belanja Awal : Rp $totalAwal");
  print("Keterangan Diskon : ${pesanDiskon!}");
  print("Besar Diskon : Rp $diskon");
  print("Total Akhir : Rp $totalAkhir");
}

// fungsi menghitung total
double hitungTotal(List<double> harga) {
  double total = 0;

  for (double h in harga) {
    total += h;
  }

  return total;
}
