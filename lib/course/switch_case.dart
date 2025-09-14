// =================================
// 3. DEMO SWITCH CASE
// =================================
void demoSwitchCase(Function(String) updateOutput) {
  String result = "=== SWITCH CASE ===\n\n";

  int hari = 7;
  String namaHari;

  result += "int hari = $hari\n\n";

  switch (hari) {
    case 1:
      namaHari = "Senin";
      break;
    case 2:
      namaHari = "Selasa";
      break;
    case 3:
      namaHari = "Rabu";
      break;
    case 4:
      namaHari = "Kamis";
      break;
    case 5:
      namaHari = "Jumat";
      break;
    default:
      namaHari = "Weekend";
  }

  result += "Hasil: Hari ke-$hari adalah $namaHari\n";

  // Additional examples - Comment/Uncomment for demo
  String jenisHari = switch (hari) {
    1 || 2 || 3 || 4 || 5 => "Hari kerja",
    6 || 7 => "Weekend",
    _ => "Tidak valid"
  };
  result += "Jenis hari: $jenisHari\n";

  updateOutput(result);
}
