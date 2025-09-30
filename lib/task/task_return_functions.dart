// =================================
// 7. DEMO RETURN FUNCTIONS
// =================================
void demoReturnFunctions(Function(String) updateOutput) {
  String result = "=== RETURN FUNCTIONS ===\n\n";

  int hasilKali = _kali(5, 3);
  result += "kali(5, 3) = $hasilKali\n";

  //----------------------------------------------------------------------------
  result += "-" * 68 + "\n";
  //----------------------------------------------------------------------------

  result += "Nilai 80 lulus? ${_isLulus(80)}\n";
  result += "Nilai 65 lulus? ${_isLulus(65)}\n";

  updateOutput(result);
}

// Function untuk perkalian
int _kali(int a, int b) {
  return a * b;
}

// Function untuk cek lulus
bool _isLulus(int nilai) {
  return nilai >= 70;
}
