// =================================
// 8. DEMO FUTURE FUNCTIONS
// =================================
void demoFutureFunctions(Function(String) updateOutput) async {
  String result = "=== FUTURE FUNCTIONS ===\n\n";
  result += "Menjalankan async function...\n";

  updateOutput(result);

  String data = await _ambilData();
  result += "Hasil: $data\n";

  // Additional examples - Comment/Uncomment for demo
  // try {
  //   int hasilBagi = await _bagi(10, 2);
  //   result += "10 / 2 = $hasilBagi\n";
  // } catch (e) {
  //   result += "Error: $e\n";
  // }

  // List<String> results = await Future.wait([
  //   _ambilDataDenganId(1),
  //   _ambilDataDenganId(2),
  // ]);
  // result += "Parallel results: $results\n";

  updateOutput(result);
}

Future<String> _ambilData() async {
  await Future.delayed(const Duration(seconds: 1));
  return 'Data berhasil diambil!';
}

  // Future<int> _bagi(int a, int b) async {
  //   if (b == 0) throw Exception('Tidak bisa bagi dengan 0');
  //   return a ~/ b;
  // }

  // Future<String> _ambilDataDenganId(int id) async {
  //   await Future.delayed(Duration(milliseconds: 500));
  //   return 'Data ID: $id';
  // }
