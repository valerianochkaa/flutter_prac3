import 'package:flutter/material.dart';

// ЭКРАН 5. Инструкции
class InstructionsScreen extends StatefulWidget {
  const InstructionsScreen({super.key});

  @override
  State<InstructionsScreen> createState() => _InstructionsScreen();
}

class _InstructionsScreen extends State<InstructionsScreen> {
  final items = List.generate(5, (index) => 'Шаг №${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Инструкция"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ...items.map((item) => GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(item, style: const TextStyle(fontSize: 16),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
