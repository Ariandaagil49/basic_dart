// =================================
// 14. DEMO ENUM
// =================================

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


void demoEnum(Function(String) updateOutput) {
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

  updateOutput(result);
}
