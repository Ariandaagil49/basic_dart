// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Basic Dart',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Arial'),
      home: const DartLearningHome(),
    );
  }
}

class DartLearningHome extends StatefulWidget {
  const DartLearningHome({super.key});

  @override
  _DartLearningHomeState createState() => _DartLearningHomeState();
}

class _DartLearningHomeState extends State<DartLearningHome> {
  String outputText = "Pilih materi untuk melihat demo";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Basic Dart - Demo untuk Murid'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Area Output
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey[100],
            ),
            width: double.infinity,
            height: 200,
            child: SingleChildScrollView(
              child: Text(outputText, style: const TextStyle(fontSize: 16)),
            ),
          ),

          // Menu Buttons
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  _buildSectionButton(
                    "1. Variable & Data Types",
                    () => _demoVariables(),
                  ),
                  _buildSectionButton(
                    "2. If Condition",
                    () => _demoIfCondition(),
                  ),
                  _buildSectionButton(
                    "3. Switch Case",
                    () => _demoSwitchCase(),
                  ),
                  _buildSectionButton("4. Loops", () => _demoLoops()),
                  _buildSectionButton("5. Try Catch", () => _demoTryCatch()),
                  _buildSectionButton(
                    "6. Functions Void",
                    () => _demoVoidFunctions(),
                  ),
                  _buildSectionButton(
                    "7. Functions Return",
                    () => _demoReturnFunctions(),
                  ),
                  _buildSectionButton(
                    "8. Future Functions",
                    () => _demoFutureFunctions(),
                  ),
                  _buildSectionButton(
                    "9. Class Basic",
                    () => _demoBasicClass(),
                  ),
                  _buildSectionButton(
                    "10. Inheritance",
                    () => _demoInheritance(),
                  ),
                  _buildSectionButton(
                    "11. Interface/Implementation",
                    () => _demoInterface(),
                  ),
                  _buildSectionButton(
                    "12. Collections (List, Map)",
                    () => _demoCollections(),
                  ),
                  _buildSectionButton(
                    "13. Null Safety",
                    () => _demoNullSafety(),
                  ),
                  _buildSectionButton("14. Enum", () => _demoEnum()),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => _clearOutput(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Text("Clear Output"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionButton(String title, VoidCallback onPressed) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12),
        ),
        child: Text(title),
      ),
    );
  }

  void _updateOutput(String content) {
    setState(() {
      outputText = content;
    });
  }

  void _clearOutput() {
    setState(() {
      outputText = "Output cleared. Pilih materi untuk demo.";
    });
  }

  // =================================
  // 1. DEMO VARIABLES & DATA TYPES
  // =================================
  void _demoVariables() {
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
    // nilai = 100;
    // result += "nilai = 100 → $nilai (dynamic bisa berubah)\n";

    // var kota = "Jakarta";
    // result += "var kota = \"Jakarta\" → $kota\n";

    // const pi = 3.14159;
    // final waktuSekarang = DateTime.now();
    // result += "const pi = 3.14159 → $pi\n";
    // result += "final waktu = DateTime.now() → $waktuSekarang\n";

    _updateOutput(result);
  }

  // =================================
  // 2. DEMO IF CONDITION
  // =================================
  void _demoIfCondition() {
    String result = "=== IF CONDITION ===\n\n";

    int nilai = 85;
    String grade;

    result += "int nilai = 85\n";
    result += "Menentukan grade:\n\n";

    if (nilai >= 90) {
      grade = "A";
    } else if (nilai >= 80) {
      grade = "B";
    } else if (nilai >= 70) {
      grade = "C";
    } else {
      grade = "D";
    }

    result += "Hasil: Grade = $grade\n";

    // Additional examples - Comment/Uncomment for demo
    // bool isRaining = false;
    // String activity = isRaining ? "Baca buku" : "Main di taman";
    // result += "\nTernary: $activity\n";

    // int umur = 20;
    // bool punyaKTP = true;
    // bool bisaVoting = (umur >= 17) && punyaKTP;
    // result += "Bisa voting: $bisaVoting\n";

    _updateOutput(result);
  }

  // =================================
  // 3. DEMO SWITCH CASE
  // =================================
  void _demoSwitchCase() {
    String result = "=== SWITCH CASE ===\n\n";

    int hari = 3;
    String namaHari;

    result += "int hari = 3\n\n";

    switch (hari) {
      case 1:
        namaHari = "Senin";
        break;
      case 2:
        namaHari = "Selasa";
        break;
      case 3:
        namaHari = "Rabu";
        break;
      case 4:
        namaHari = "Kamis";
        break;
      case 5:
        namaHari = "Jumat";
        break;
      default:
        namaHari = "Weekend";
    }

    result += "Hasil: Hari ke-$hari adalah $namaHari\n";

    // Additional examples - Comment/Uncomment for demo
    // String jenisHari = switch (hari) {
    //   1 || 2 || 3 || 4 || 5 => "Hari kerja",
    //   6 || 7 => "Weekend",
    //   _ => "Tidak valid"
    // };
    // result += "Jenis hari: $jenisHari\n";

    _updateOutput(result);
  }

  // =================================
  // 4. DEMO LOOPS
  // =================================
  void _demoLoops() {
    String result = "=== LOOPS ===\n\n";

    // For loop
    result += "For loop (1-5):\n";
    for (int i = 1; i <= 5; i++) {
      result += "$i ";
    }
    result += "\n\n";

    // Additional examples - Comment/Uncomment for demo
    // result += "While loop:\n";
    // int count = 1;
    // while (count <= 3) {
    //   result += "Count: $count\n";
    //   count++;
    // }

    // List<String> buah = ["Apel", "Jeruk", "Mangga"];
    // result += "\nFor-in loop:\n";
    // for (String item in buah) {
    //   result += "$item ";
    // }

    // result += "\n\nBreak & Continue (1-10, skip 5, stop 8):\n";
    // for (int i = 1; i <= 10; i++) {
    //   if (i == 5) continue;
    //   if (i == 8) break;
    //   result += "$i ";
    // }

    _updateOutput(result);
  }

  // =================================
  // 5. DEMO TRY CATCH
  // =================================
  void _demoTryCatch() {
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
    // result += "\nContoh lain - Division by zero:\n";
    // try {
    //   int hasil = 10 ~/ 0;
    //   result += "Hasil: $hasil\n";
    // } catch (e) {
    //   result += "Error: $e\n";
    // }

    // result += "\nDengan finally:\n";
    // try {
    //   int angka = int.parse("123");
    //   result += "Berhasil: $angka\n";
    // } catch (e) {
    //   result += "Error: $e\n";
    // } finally {
    //   result += "Finally block dijalankan\n";
    // }

    _updateOutput(result);
  }

  // =================================
  // 6. DEMO VOID FUNCTIONS
  // =================================
  void _demoVoidFunctions() {
    String result = "=== VOID FUNCTIONS ===\n\n";

    result += _sapaDunia();
    result += "\n";
    result += _sapaOrang("Ahmad");

    // Additional examples - Comment/Uncomment for demo
    // result += "\n" + _tampilkanInfo("Budi", 30);
    // result += "\n" + _tampilkanInfoDenganKota("Sari", 25, "Jakarta");
    // result += "\n" + _hitungLuas(5.0, 3.0);

    _updateOutput(result);
  }

  String _sapaDunia() {
    return "Halo Dunia!";
  }

  String _sapaOrang(String nama) {
    return "Halo $nama!";
  }

  // String _tampilkanInfo(String nama, int umur) {
  //   return "Nama: $nama, Umur: $umur";
  // }

  // String _tampilkanInfoDenganKota(String nama, int umur, String kota) {
  //   return "Nama: $nama, Umur: $umur, Kota: $kota";
  // }

  // String _hitungLuas(double panjang, double lebar) {
  //   double luas = panjang * lebar;
  //   return "Luas: $luas";
  // }

  // =================================
  // 7. DEMO RETURN FUNCTIONS
  // =================================
  void _demoReturnFunctions() {
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

    _updateOutput(result);
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

  // =================================
  // 8. DEMO FUTURE FUNCTIONS
  // =================================
  void _demoFutureFunctions() async {
    String result = "=== FUTURE FUNCTIONS ===\n\n";
    result += "Menjalankan async function...\n";

    _updateOutput(result);

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

    _updateOutput(result);
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

  // =================================
  // 9. DEMO BASIC CLASS
  // =================================
  void _demoBasicClass() {
    String result = "=== BASIC CLASS ===\n\n";

    Mahasiswa mhs1 = Mahasiswa("Ahmad", 20, "Informatika");
    result += "Mahasiswa: ${mhs1._getInfoString()}\n";
    result += "Status: ${mhs1.getStatus()}\n";

    // Additional examples - Comment/Uncomment for demo
    // Mobil mobil1 = Mobil("Toyota", 2020);
    // Mobil mobil2 = Mobil.baru("Honda");
    // result += "Mobil1: ${mobil1.merk} ${mobil1.tahun}\n";
    // result += "Mobil2: ${mobil2.merk} ${mobil2.tahun}\n";

    _updateOutput(result);
  }

  // =================================
  // 10. DEMO INHERITANCE
  // =================================
  void _demoInheritance() {
    String result = "=== INHERITANCE ===\n\n";

    Kucing kucing = Kucing("Whiskers", 2, "Persian");
    result += "Info: ${kucing._getInfo()}\n";
    result += "Suara: ${kucing._getBersuara()}\n";
    result += "Aktivitas: ${kucing._getBermain()}\n";

    // Additional examples - Comment/Uncomment for demo
    // Hewan hewan = Kucing("Kitty", 1, "Siamese");
    // result += "Polymorphism: ${(hewan as Kucing)._getBersuara()}\n";

    _updateOutput(result);
  }

  // =================================
  // 11. DEMO INTERFACE/IMPLEMENTATION
  // =================================
  void _demoInterface() {
    String result = "=== INTERFACE/IMPLEMENTATION ===\n\n";

    Motor motor = Motor("Honda");
    MobilImpl mobil = MobilImpl("Toyota");

    result += "Motor: ${motor._getStart()}\n";
    result += "Mobil: ${mobil._getStart()}\n";

    // Additional examples - Comment/Uncomment for demo
    // List<KendaraanImpl> kendaraans = [motor, mobil];
    // result += "\nPolymorphism:\n";
    // for (var k in kendaraans) {
    //   result += "${k._getStart()}\n";
    // }

    _updateOutput(result);
  }

  // =================================
  // 12. DEMO COLLECTIONS
  // =================================
  void _demoCollections() {
    String result = "=== COLLECTIONS ===\n\n";

    // List
    List<String> buah = ["Apel", "Jeruk", "Mangga"];
    result += "List: $buah\n";
    buah.add('Pisang');
    result += "Setelah add: $buah\n";

    // Additional examples - Comment/Uncomment for demo
    // Map<String, dynamic> mahasiswa = {
    //   'nama': 'Ahmad',
    //   'umur': 20,
    //   'jurusan': 'Informatika'
    // };
    // result += "Map: ${mahasiswa['nama']}, ${mahasiswa['umur']}\n";

    // Set<int> angkaUnik = {1, 2, 3, 3, 4, 4, 5};
    // result += "Set: $angkaUnik\n";

    // List<int> angka = [1, 2, 3, 4, 5];
    // var genap = angka.where((x) => x % 2 == 0).toList();
    // result += "Filter genap: $genap\n";

    _updateOutput(result);
  }

  // =================================
  // 13. DEMO NULL SAFETY
  // =================================
  void _demoNullSafety() {
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

    _updateOutput(result);
  }

  // =================================
  // 14. DEMO ENUM
  // =================================
  void _demoEnum() {
    String result = "=== ENUM ===\n\n";

    Status currentStatus = Status.pending;
    result += "Status: $currentStatus\n";
    result += "Index: ${currentStatus.index}\n";
    result += "Name: ${currentStatus.name}\n";

    String statusMessage = switch (currentStatus) {
      Status.pending => 'Menunggu persetujuan',
      Status.approved => 'Sudah disetujui',
      Status.rejected => 'Ditolak',
    };
    result += "Message: $statusMessage\n";

    // Additional examples - Comment/Uncomment for demo
    // Hari hariIni = Hari.senin;
    // result += "Hari: ${hariIni.nama} (${hariIni.nomor})\n";

    // List<Status> semuaStatus = Status.values;
    // result += "Semua status: ";
    // for (Status s in semuaStatus) {
    //   result += "${s.name} ";
    // }

    _updateOutput(result);
  }
}

// =================================
// HELPER CLASSES
// =================================

class Mahasiswa {
  String nama;
  int umur;
  String jurusan;

  Mahasiswa(this.nama, this.umur, this.jurusan);

  String getStatus() {
    return umur >= 18 ? 'Dewasa' : 'Remaja';
  }

  String _getInfoString() {
    return 'Nama: $nama, Umur: $umur, Jurusan: $jurusan';
  }
}

class Mobil {
  String merk;
  int tahun;

  Mobil(this.merk, this.tahun);
  Mobil.baru(this.merk) : tahun = 2024;
}

class Hewan {
  String nama;
  int umur;

  Hewan(this.nama, this.umur);
}

class Kucing extends Hewan {
  String ras;

  Kucing(super.nama, super.umur, this.ras);

  String _getInfo() {
    return 'Nama: $nama, Umur: $umur tahun, Ras: $ras';
  }

  String _getBersuara() {
    return '$nama mengeong: Meow!';
  }

  String _getBermain() {
    return '$nama sedang bermain dengan bola';
  }
}

abstract class KendaraanImpl {
  String merk;
  KendaraanImpl(this.merk);

  void start();
  void stop();
  String _getStart();
}

class Motor extends KendaraanImpl {
  Motor(super.merk);

  @override
  void start() {}

  @override
  void stop() {}

  @override
  String _getStart() {
    return '$merk motor dinyalakan dengan kick starter';
  }
}

class MobilImpl extends KendaraanImpl {
  MobilImpl(super.merk);

  @override
  void start() {}

  @override
  void stop() {}

  @override
  String _getStart() {
    return '$merk mobil dinyalakan dengan tombol';
  }
}

enum Status { pending, approved, rejected }

enum Hari {
  senin('Senin', 1),
  selasa('Selasa', 2),
  rabu('Rabu', 3),
  kamis('Kamis', 4),
  jumat('Jumat', 5),
  sabtu('Sabtu', 6),
  minggu('Minggu', 7);

  const Hari(this.nama, this.nomor);
  final String nama;
  final int nomor;

  bool get isWeekend => this == sabtu || this == minggu;
}
