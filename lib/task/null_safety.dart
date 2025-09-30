// =================================
// 13. DEMO NULL SAFETY
// =================================
void demoNullSafety(Function(String) updateOutput) {
  String result = "=== NULL SAFETY ===\n\n";

  String nama = "Ahmad"; // Non-nullable
  String? namaBisa = null; // Nullable

  result += "Non-nullable: $nama\n";
  result += "Nullable: $namaBisa\n";

  if (namaBisa != null) {
    result += "Panjang: ${namaBisa.length}\n";
  } else {
    result += "Nama adalah null\n";
  }

  // Additional examples - Comment/Uncomment for demo
  // namaBisa = "Budi";
  // int? panjang = namaBisa?.length;
  // result += "Null-aware access: $panjang\n";

  // String tampilan = namaBisa ?? "Nama tidak ada";
  // result += "Null coalescing: $tampilan\n";

  // String? alamat;
  // alamat ??= "Jakarta";
  // result += "Null assignment: $alamat\n";

  updateOutput(result);
}
