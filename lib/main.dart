// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:flutter_application_1/course/future_either_functions.dart';

import 'course/basic_class.dart';
import 'course/collections.dart';
import 'course/enum.dart';
import 'course/future_functions.dart';
import 'course/if_condition.dart';
import 'course/inheritance.dart';
import 'course/interface.dart';
import 'course/loops.dart';
import 'course/null_safety.dart';
import 'course/return_functions.dart';
import 'course/switch_case.dart';
import 'course/try_catch.dart';
import 'course/variable.dart';
import 'course/void_functions.dart';

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
      appBar: AppBar(title: const Text('Contoh'), centerTitle: true),
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
                    () => demoVariables(_updateOutput),
                  ),
                  _buildSectionButton(
                    "2. If Condition",
                    () => demoIfCondition(_updateOutput),
                  ),
                  _buildSectionButton(
                    "3. Switch Case",
                    () => demoSwitchCase(_updateOutput),
                  ),
                  _buildSectionButton(
                    "4. Loops",
                    () => demoLoops(_updateOutput),
                  ),
                  _buildSectionButton(
                    "5. Try Catch",
                    () => demoTryCatch(_updateOutput),
                  ),
                  _buildSectionButton(
                    "6. Functions Void",
                    () => demoVoidFunctions(_updateOutput),
                  ),
                  _buildSectionButton(
                    "7. Functions Return",
                    () => demoReturnFunctions(_updateOutput),
                  ),
                  _buildSectionButton(
                    "8. Future Functions",
                    () => demoFutureFunctions(_updateOutput),
                  ),
                  _buildSectionButton(
                    "9. Class Basic",
                    () => demoBasicClass(_updateOutput),
                  ),
                  _buildSectionButton(
                    "10. Inheritance",
                    () => demoInheritance(_updateOutput),
                  ),
                  _buildSectionButton(
                    "11. Interface/Implementation",
                    () => demoInterface(_updateOutput),
                  ),
                  _buildSectionButton(
                    "12. Collections (List, Map)",
                    () => demoCollections(_updateOutput),
                  ),
                  _buildSectionButton(
                    "13. Null Safety",
                    () => demoNullSafety(_updateOutput),
                  ),
                  _buildSectionButton(
                    "14. Enum",
                    () => demoEnum(_updateOutput),
                  ),
                  _buildSectionButton(
                    "15. Furete Either Function",
                    () => demoFutureEither(_updateOutput),
                  ),
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
}
