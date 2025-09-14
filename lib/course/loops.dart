// =================================
// 4. DEMO LOOPS
// =================================
void demoLoops(Function(String) updateOutput) {
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

  updateOutput(result);
}
