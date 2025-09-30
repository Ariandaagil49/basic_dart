// =================================
// 1. DEMO VARIABLES & DATA TYPES
// =================================

import 'dart:ffi';

void demoVariables(Function(String) updateOutput) {
  String result = "=== VARIABLES & DATA TYPES ===\n\n";

  // Basic examples - Always shown
  // String nama = "Ahmad";
  // int umur = 25;
  // result += "String nama = \"Ahmad\" → $nama\n";
  // result += "int umur = 25 → $umur\n";

  String nama = "Arianda Agil Gilang Budiatmoko";
  String alamat = "Depok, Jawa Barat";
  int umur = 22;
  double tinggiBadan = 170.0;
  bool statusMahasiswa = true;
  var hobi = "berenang";
  const phi = "3,14";
  final time = DateTime.now();

  result += "Nama : $nama\n";
  result += "Alamat : $alamat\n";
  result += "Umur: $umur\n";
  result += "Tinggi badan: $tinggiBadan\n";
  result += "Status: $statusMahasiswa\n";
  result += "Hobi: $hobi\n";
  result += "Nilai Phi: $phi\n";
  result += "Waktu: $time\n";

  updateOutput(result);
}
