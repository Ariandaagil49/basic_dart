// =================================
// 4. DEMO LOOPS
// =================================
void demoLoops(Function(String) updateOutput) {
  String result = "=== LOOPS ===\n\n";

  // For loop
  result += "For loop (2-20):\n";
  for (int i = 2; i <= 20; i += 2) {
    result += "$i ";
  }
  result += "\n";
  //----------------------------------------------------------------------------
  result += "-" * 68;
  //----------------------------------------------------------------------------
  result += "While loop:\n";
  int count = 5;
  while (count >= 1) {
    result += "$count";
    count--;
  }
  result += "\n";
  //----------------------------------------------------------------------------
  result += "-" * 68;
  //----------------------------------------------------------------------------
  List<String> nama = ["Ali", "Budi", "Citra", "Dewi"];
  result += "\nFor-in loop:\n";
  for (String item in nama) {
    result += "$item ";
  }
  //----------------------------------------------------------------------------
  result += "-" * 68;
  //----------------------------------------------------------------------------
  result += "Break & Continue:\n";
  for (int i = 1; i <= 10; i++) {
    if (i == 5) continue;
    if (i == 8) break;
    result += "$i ";
  }
  //----------------------------------------------------------------------------
  result += "-" * 68;
  //----------------------------------------------------------------------------
  result += "\n";
  for (int sample = 1; sample <= 15; sample++) {
    if (sample == 7) {
      continue;
    }
    if (sample == 12) {
      break;
    }
    result += "$sample";
  }

  updateOutput(result);
}
