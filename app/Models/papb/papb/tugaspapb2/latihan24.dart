import 'dart:io';

void main() {
  // Menampilkan pilihan satuan suhu
  print("Pilih satuan suhu yang ingin dikonversi:");
  print("1. Fahrenheit ke Celcius");
  print("2. Celcius ke Fahrenheit");
  print("3. Celcius ke Kelvin");
  print("4. Kelvin ke Celcius");

  // Meminta pengguna memilih opsi
  int pilihan = int.parse(stdin.readLineSync()!);

  // Meminta input suhu berdasarkan pilihan
  stdout.write("Masukkan suhu: ");
  double suhu = double.parse(stdin.readLineSync()!);

  // Melakukan konversi sesuai pilihan
  double hasil;
  if (pilihan == 1) {
    // Fahrenheit ke Celcius
    hasil = (suhu - 32) * 5 / 9;
  } else if (pilihan == 2) {
    // Celcius ke Fahrenheit
    hasil = (suhu * 9 / 5) + 32;
  } else if (pilihan == 3) {
    // Celcius ke Kelvin
    hasil = suhu + 273.15;
  } else if (pilihan == 4) {
    // Kelvin ke Celcius
    hasil = suhu - 273.15;
  } else {
    print("Pilihan tidak valid.");
    return;
  }

  // Menampilkan hasil konversi
  print("Hasil konversi: $hasil");
}
