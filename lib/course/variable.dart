// =================================
// 1. DEMO VARIABLES & DATA TYPES
// =================================

void demoVariables(Function(String) updateOutput) {
  String result = "=== VARIABLES & DATA TYPES ===\n\n";

  // Basic examples - Always shown
  String nama = "Ahmad";
  int umur = 25;
  result += "String nama = \"Ahmad\" → $nama\n";
  result += "int umur = 25 → $umur\n";

  // Additional examples - Comment/Uncomment for demo
  // double tinggi = 175.5;
  // result += "double tinggi = 175.5 → $tinggi cm\n";

  // bool isStudent = true;
  // result += "bool isStudent = true → $isStudent\n";

  // dynamic nilai = "Bisa apa saja";
  // result += "dynamic nilai = \"Bisa apa saja\" → $nilai\n";
  // nilai = "100";
  // result += "nilai = 100 → $nilai (dynamic bisa berubah)\n";
  // result += "Tipe nilai adalah ${nilai.runtimeType}";

  // var kota = "Jakarta";
  // result += "var kota = \"Jakarta\" → $kota\n";

  // const pi = 3.14159;
  // final waktuSekarang = DateTime.now();

  // result += "const pi = 3.14159 → $pi\n";
  // result += "final waktu = DateTime.now() → $waktuSekarang\n";

  updateOutput(result);
}
