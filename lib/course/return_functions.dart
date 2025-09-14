// =================================
// 7. DEMO RETURN FUNCTIONS
// =================================
void demoReturnFunctions(Function(String) updateOutput) {
  String result = "=== RETURN FUNCTIONS ===\n\n";

  int hasilTambah = _tambah(5, 3);
  result += "tambah(5, 3) = $hasilTambah\n";

  String namaLengkap = _gabungNama("Ahmad", "Sukirman");
  result += "gabungNama('Ahmad', 'Sukirman') = $namaLengkap\n";

  // Additional examples - Comment/Uncomment for demo
  // bool cekGenap = _isGenap(8);
  // result += "isGenap(8) = $cekGenap\n";

  // double luasLingkaran = _hitungLingkaran(5.0);
  // result += "hitungLingkaran(5.0) = ${luasLingkaran.toStringAsFixed(2)}\n";

  // List<int> deret = _buatDeret(1, 5);
  // result += "buatDeret(1, 5) = $deret\n";

  updateOutput(result);
}

int _tambah(int a, int b) {
  return a + b;
}

String _gabungNama(String depan, String belakang) {
  return '$depan $belakang';
}

  // bool _isGenap(int angka) {
  //   return angka % 2 == 0;
  // }

  // double _hitungLingkaran(double radius) => 3.14159 * radius * radius;

  // List<int> _buatDeret(int start, int end) {
  //   List<int> deret = [];
  //   for (int i = start; i <= end; i++) {
  //     deret.add(i);
  //   }
  //   return deret;
  // }
