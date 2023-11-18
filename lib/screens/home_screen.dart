import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nav_demo/screens/first_screen.dart';

import 'controllers/counter_controller.dart';
import 'second_screen.dart';
import 'third_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                controller.a.toString(),
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  controller.increment();
                },
                child: const Text("Increment"),
              ),
              const SizedBox(height: 30),

              /// dec
              TextButton(
                onPressed: () {
                  controller.decrement();
                },
                child: const Text("Decrement"),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FirstScreen(),
                  ),
                ),
                child: const Text("Go to First Screen"),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SecondScreen(),
                  ),
                ),
                child: const Text("Go to Second Screen"),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ThirdScreen(),
                  ),
                ),
                child: const Text("Go to Third Screen"),
              ),
            ],
          )),
    );
  }
}
