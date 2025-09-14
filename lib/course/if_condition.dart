// =================================
// 2. DEMO IF CONDITION
// =================================
void demoIfCondition(Function(String) updateOutput) {
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

  updateOutput(result);
}
