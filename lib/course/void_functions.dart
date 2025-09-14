// =================================
// 6. DEMO VOID FUNCTIONS
// =================================
void demoVoidFunctions(Function(String) updateOutput) {
  String result = "=== VOID FUNCTIONS ===\n\n";

  result += _sapaDunia();
  result += "\n";
  result += _sapaOrang("Ahmad");

  // Additional examples - Comment/Uncomment for demo
  // result += "\n" + _tampilkanInfo("Budi", 30);
  // result += "\n" + _tampilkanInfoDenganKota("Sari", 25, "Jakarta");
  // result += "\n" + _hitungLuas(5.0, 3.0);

  updateOutput(result);
}

String _sapaDunia() {
  return "Halo Dunia!";
}

String _sapaOrang(String nama) {
  return "Halo $nama!";
}

  // String _tampilkanInfo(String nama, int umur) {
  //   return "Nama: $nama, Umur: $umur";
  // }

  // String _tampilkanInfoDenganKota(String nama, int umur, String kota) {
  //   return "Nama: $nama, Umur: $umur, Kota: $kota";
  // }

  // String _hitungLuas(double panjang, double lebar) {
  //   double luas = panjang * lebar;
  //   return "Luas: $luas";
  // }
