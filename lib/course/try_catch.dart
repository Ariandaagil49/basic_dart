// =================================
// 5. DEMO TRY CATCH
// =================================
void demoTryCatch(Function(String) updateOutput) {
  String result = "=== TRY CATCH ===\n\n";

  // Basic try-catch
  result += "Mencoba parsing string ke int:\n";
  String angkaString = "abc";

  try {
    int angka = int.parse(angkaString);
    result += "Berhasil: $angka\n";
  } catch (e) {
    result += "Error: Tidak bisa convert '$angkaString' ke angka\n";
  }

  // Additional examples - Comment/Uncomment for demo
  result += "\nContoh lain - Division by zero:\n";
  try {
    int hasil = 10 ~/ 0;
    result += "Hasil: $hasil\n";
  } catch (e) {
    result += "Error: $e\n";
  }

  result += "\nDengan finally:\n";
  try {
    int angka = int.parse("123");
    result += "Berhasil: $angka\n";
  } catch (e) {
    result += "Error: $e\n";
  } finally {
    result += "Finally block dijalankan\n";
  }

  updateOutput(result);
}
