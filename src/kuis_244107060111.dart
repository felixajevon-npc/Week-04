double hitungTotal(List<double> hargaBarang) {
  double total = 0;
  for (double harga in hargaBarang) {
    total += harga;
  }
  return total;
}

void main() {
  String nama = "Felix Alberta Jevon";
  String nim = "244107060111";
  double nilaiUnikNIM = 111.0;

  List<double> daftarHarga = [55000.0, 75000.0, 40000.0, 20000.0, 30000.0];
  daftarHarga.add(nilaiUnikNIM);

  double totalAwal = hitungTotal(daftarHarga);
  
  double diskon = 0.0;
  String? pesanDiskon;

  if (totalAwal > 200000.0) {
    diskon = 0.10;
    pesanDiskon = "Diskon 10%";
  } else if (totalAwal >= 100000.0 && totalAwal <= 200000.0) {
    diskon = 0.05;
    pesanDiskon = "Diskon 5%";
  } else {
    diskon = 0.0;
    pesanDiskon = "Tidak ada diskon (0%)";
  }

  double besarDiskon = totalAwal * diskon;
  double totalAkhir = totalAwal - besarDiskon;

  print("Nama: " + nama);
  print("NIM: " + nim);
  print("Total Awal: " + totalAwal.toStringAsFixed(0));
  print("Besar Diskon: " + besarDiskon.toStringAsFixed(0) + " (" + pesanDiskon! + ")");
  print("Total Akhir: " + totalAkhir.toStringAsFixed(0));
}