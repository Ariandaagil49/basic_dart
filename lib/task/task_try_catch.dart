// =================================
// 5. DEMO TRY CATCH
// =================================
void demoTryCatch(Function(String) updateOutput) {
  String result = "=== TRY CATCH ===\n\n";

  String teks = "xyz";

  try {
    int angka = int.parse(teks);
    result += "Hasil konversi: $angka";
  } catch (e) {
    result += "Terjadi Error : $e";
  } finally {
    result += "Program selesai dijalankan";
  }
  result += "\n";
  //----------------------------------------------------------------------------
  result += "-" * 68;
  //---------------------------------------------------------------------------
  int angka1 = 10;
  int angka2 = 0;

  try {
    if (angka2 == 0) {
      throw Exception("Tidak bisa membagi dengan nol! \n");
    }
    double hasil = angka1 / angka2;
    result += "Hasil pembagian: $hasil \n";
  } catch (e) {
    result += "Error: $e \n";
  } finally {
    result += "Program selesai dijalankan";
  }

  updateOutput(result);
}
