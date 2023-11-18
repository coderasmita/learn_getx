import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nav_demo/screens/controllers/counter_controller.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.find<CounterController>();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${controller.a}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 40),
            const Text(
              "First Screen",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
