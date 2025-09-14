// =================================
// 12. DEMO COLLECTIONS
// =================================
void demoCollections(Function(String) updateOutput) {
  String result = "=== COLLECTIONS ===\n\n";

  // =====================
  // 1. LIST
  // =====================
  List<String> buah = ["Apel", "Jeruk", "Mangga"];
  result += "List awal: $buah\n";

  // Tambah data
  buah.add("Pisang");
  result += "Setelah add Pisang: $buah\n";

  // Akses data
  result += "Buah pertama: ${buah[0]}\n";
  result += "Buah ketiga: ${buah[2]}\n";

  // Ubah data
  buah[1] = "Durian";
  result += "Setelah ubah index ke-1 jadi Durian: $buah\n";

  // Hapus data
  buah.remove("Mangga");
  result += "Setelah remove Mangga: $buah\n";

  // Panjang list
  result += "Jumlah buah: ${buah.length}\n";

  // Looping list
  result += "Looping dengan for-in:\n";
  for (String b in buah) {
    result += "- $b\n";
  }

  // Filtering list
  List<int> angka = [1, 2, 3, 4, 5, 6];
  var genap = angka.where((x) => x % 2 == 0).toList();
  result += "List angka: $angka\n";
  result += "Filter genap: $genap\n\n";

  // =====================
  // 2. SET
  // =====================
  Set<int> angkaUnik = {1, 2, 3, 3, 4, 5, 5};
  result += "Set dengan duplikat {1,2,3,3,4,5,5} → $angkaUnik\n";

  angkaUnik.add(6);
  result += "Setelah add 6: $angkaUnik\n\n";

  // =====================
  // 3. MAP
  // =====================
  Map<String, dynamic> mahasiswa = {
    "nama": "Ahmad",
    "umur": 20,
    "jurusan": "Informatika"
  };

  result += "Map awal: $mahasiswa\n";
  result += "Nama: ${mahasiswa['nama']}, Umur: ${mahasiswa['umur']}\n";

  // Tambah data
  mahasiswa["semester"] = 5;
  result += "Setelah tambah semester: $mahasiswa\n";

  // Ubah data
  mahasiswa["umur"] = 21;
  result += "Setelah update umur: $mahasiswa\n";

  // Looping map
  result += "Looping Map:\n";
  mahasiswa.forEach((key, value) {
    result += "- $key → $value\n";
  });

  updateOutput(result);
}
