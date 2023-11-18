import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nav_demo/screens/controllers/checkbox_controller.dart';
import 'package:nav_demo/screens/controllers/counter_controller.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.find<CounterController>();
    final CheckboxController checkboxController = Get.put(CheckboxController());
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                counterController.a.toString(),
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Go to Third First Screen (Go)"),
              ),
              Checkbox(
                value: checkboxController.isChecked.value,
                onChanged: (value) {
                  checkboxController.isChecked.value = value!;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
