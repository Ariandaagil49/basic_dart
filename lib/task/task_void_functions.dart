// =================================
// 6. DEMO VOID FUNCTIONS
// =================================
void demoVoidFunctions(Function(String) updateOutput) {
  // String result = "=== VOID FUNCTIONS ===\n\n";

  // void ucapkanSelamatPagi(String nama) {
  //   result += "Selamat pagi, $nama!";
  // }

  // void hitungKelilingPersegi(int sisi) {
  //   int keliling = 4 * sisi;
  //   result += "Keliling persegi dengan sisi $sisi adalah $keliling";
  // }

  // void runProgram() {
  //   ucapkanSelamatPagi("Gilang");
  //   hitungKelilingPersegi(5);
  // }

  String result = "";

  void ucapkanSelamatPagi(String nama) {
    result += "Selamat pagi, $nama!\n";
  }

  void hitungKelilingPersegi(int sisi) {
    int keliling = 4 * sisi;
    result += "Keliling persegi dengan sisi $sisi adalah $keliling\n";
  }

  void jalankanProgram() {
    ucapkanSelamatPagi("Gilang");
    hitungKelilingPersegi(5);
  }

  jalankanProgram();

  updateOutput(result);
}
