import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nav_demo/screens/controllers/counter_controller.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.find<CounterController>();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counterController.a.toString(),
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Go to Second First Screen (PUSH)"),
            ),
          ],
        ),
      ),
    );
  }
}
