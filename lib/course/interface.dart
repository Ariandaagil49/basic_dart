// =================================
// 11. DEMO INTERFACE/IMPLEMENTATION
// =================================
import 'helper_class.dart';

void demoInterface(Function(String) updateOutput) {
  String result = "=== INTERFACE/IMPLEMENTATION ===\n\n";

  Motor motor = Motor("Honda");
  MobilImpl mobil = MobilImpl("Toyota");

  result += "Motor: ${motor.getStart()}\n";
  result += "Mobil: ${mobil.getStart()}\n";

  // Additional examples - Comment/Uncomment for demo
  // List<KendaraanImpl> kendaraans = [motor, mobil];
  // result += "\nPolymorphism:\n";
  // for (var k in kendaraans) {
  //   result += "${k._getStart()}\n";
  // }

  updateOutput(result);
}
