// =================================
// 2. DEMO IF CONDITION
// =================================
void demoIfCondition(Function(String) updateOutput) {
  String result = "=== IF CONDITION ===\n\n";

  int n = 10;
  if (n % 2 == 0) {
    result += "$n adalah bilangan genap\n";
  } else {
    result += "$n adalah bilangan ganjil\n";
  }

  result += "-" * 68;
  result += "\n";
  //------------------------------------------------------------------------------

  int umur = 22;
  String kategori = "";

  if (umur < 13) {
    kategori = "Anak-Anak";
  } else if (umur >= 13 && umur <= 19) {
    kategori = "Remaja";
  } else if (umur >= 20 && umur <= 59) {
    kategori = "Dewasa";
  } else {
    kategori = "Lansia";
  }

  result += "Saya berumur $umur tahun dan saya memasuki umur $kategori \n";
  //------------------------------------------------------------------------------
  result += "-" * 68;

  // result += "Hasil: Grade = $grade\n";

  // Additional examples - Comment/Uncomment for demo
  // bool isRaining = false;
  // String activity = isRaining ? "Baca buku" : "Main di taman";
  // result += "\nTernary: $activity\n";

  // int umur = 20;
  // bool punyaKTP = true;
  // bool bisaVoting = (umur >= 17) && punyaKTP;
  // result += "Bisa voting: $bisaVoting\n";

  int nilai = 80;
  String status = (nilai >= 75) ? "Lulus" : "Tidak Lulus";
  result += "Nilai $nilai $status";
  updateOutput(result);
}
