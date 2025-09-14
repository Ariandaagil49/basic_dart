// =================================
// 10. DEMO INHERITANCE
// =================================
import 'helper_class.dart';

void demoInheritance(Function(String) updateOutput) {
  String result = "=== INHERITANCE ===\n\n";

  Kucing kucing = Kucing("Whiskers", 2, "Persian");
  result += "Info: ${kucing.getInfo()}\n";
  result += "Suara: ${kucing.getBersuara()}\n";
  result += "Aktivitas: ${kucing.getBermain()}\n";

  // Additional examples - Comment/Uncomment for demo
  // Hewan hewan = Kucing("Kitty", 1, "Siamese");
  // result += "Polymorphism: ${(hewan as Kucing)._getBersuara()}\n";

  updateOutput(result);
}
