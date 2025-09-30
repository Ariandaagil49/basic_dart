// =================================
// 3. DEMO SWITCH CASE
// =================================
void demoSwitchCase(Function(String) updateOutput) {
  String result = "=== SWITCH CASE ===\n\n";

  int bulan = 4;
  String namaBulan;
  switch (bulan) {
    case 1:
      namaBulan = "Januari";
      break;
    case 2:
      namaBulan = "Februari";
      break;
    case 3:
      namaBulan = "Maret";
      break;
    case 4:
      namaBulan = "April";
      break;
    case 5:
      namaBulan = "Mei";
      break;
    case 6:
      namaBulan = "Juni";
      break;
    case 7:
      namaBulan = "Juli";
      break;
    case 8:
      namaBulan = "Agustus";
      break;
    case 9:
      namaBulan = "September";
      break;
    case 10:
      namaBulan = "Oktober";
      break;
    case 11:
      namaBulan = "November";
      break;
    case 12:
      namaBulan = "Desember";
      break;
    default:
      namaBulan = "Bulan tidak valid";
  }

  result += "Bulan ke-$bulan adalah $namaBulan \n\n";

  String musim = switch (bulan) {
    11 || 12 || 1 || 2 => "Musim Hujan",
    3 || 4 || 5 || 6 || 7 || 8 || 9 || 10 => "Musim Kemarau",
    _ => "Bulan tidak valid",
  };
  result += "Musim pada bulan ke-$bulan adalah $musim";

  updateOutput(result);
}
