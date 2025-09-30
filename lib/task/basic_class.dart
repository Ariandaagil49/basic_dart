// =================================
// 9. DEMO BASIC CLASS
// =================================
import 'helper_class.dart';

void demoBasicClass(Function(String) updateOutput) {
  String result = "=== BASIC CLASS ===\n\n";

  Mahasiswa mhs1 = Mahasiswa("Ahmad", 20, "Informatika");
  result += "Mahasiswa: ${mhs1.getInfoString()}\n";
  result += "Status: ${mhs1.getStatus()}\n";

  // Additional examples - Comment/Uncomment for demo
  // Mobil mobil1 = Mobil("Toyota", 2020);
  // Mobil mobil2 = Mobil.baru("Honda");
  // result += "Mobil1: ${mobil1.merk} ${mobil1.tahun}\n";
  // result += "Mobil2: ${mobil2.merk} ${mobil2.tahun}\n";

  updateOutput(result);
}
